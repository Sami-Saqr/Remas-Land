import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:remas_land/core/database/app_database.dart';
import 'package:remas_land/core/database/seed/database_seeder.dart';
import 'package:remas_land/core/errors/failures.dart';
import 'package:remas_land/core/storage/prefs_service.dart';
import 'package:remas_land/features/account/data/account_repository_impl.dart';
import 'package:remas_land/features/account/domain/account_entity.dart';
import 'package:remas_land/features/wallet/data/wallet_repository_impl.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  late AppDatabase db;
  late PrefsService prefs;
  late WalletRepositoryImpl walletRepo;
  late AccountRepositoryImpl accountRepo;

  setUp(() async {
    SharedPreferences.setMockInitialValues({});
    final sharedPrefs = await SharedPreferences.getInstance();
    prefs = PrefsService(sharedPrefs);
    db = AppDatabase.forTesting(NativeDatabase.memory());
    await DatabaseSeeder(db: db, prefs: prefs).seedIfNeeded();

    walletRepo = WalletRepositoryImpl(walletDao: db.walletDao, prefs: prefs);
    accountRepo = AccountRepositoryImpl(accountDao: db.accountDao, prefs: prefs);
  });

  tearDown(() async {
    await db.close();
  });

  test('Wallet top-up, quick transfer, privilege card & visibility toggle',
      () async {
    final initial = await walletRepo.watchWallet().first;
    expect(initial.balancePiasters, 125000);
    expect(initial.isPrivilegeActive, isFalse);

    await walletRepo.topUp(amountPiasters: 50000, sourceLabel: 'Visa ••4829');
    final afterTopUp = await walletRepo.watchWallet().first;
    expect(afterTopUp.balancePiasters, 175000);

    await walletRepo.sendQuickTransfer(
      amountPiasters: 25000,
      title: 'Send Cash to Omar',
      subtitle: 'Instant Transfer',
    );
    final afterTransfer = await walletRepo.watchWallet().first;
    expect(afterTransfer.balancePiasters, 150000);

    await expectLater(
      () => walletRepo.sendQuickTransfer(
        amountPiasters: 999999,
        title: 'Too High',
        subtitle: 'Test',
      ),
      throwsA(isA<ValidationFailure>()),
    );

    await walletRepo.activatePrivilegeCard();
    final afterPrivilege = await walletRepo.watchWallet().first;
    expect(afterPrivilege.isPrivilegeActive, isTrue);

    await walletRepo.setBalanceHidden(true);
    expect(walletRepo.isBalanceHidden(), isTrue);
  });

  test('Account profile, addresses CRUD, and local settings persist', () async {
    await accountRepo.updateProfile(
      fullName: 'Kareem M. Tarek',
      phone: '+20 100 999 8888',
    );
    final profile = await accountRepo.watchProfile().first;
    expect(profile.fullName, 'Kareem M. Tarek');

    await accountRepo.saveAddress(
      const AddressEntity(
        id: 'addr_new_cairo',
        label: 'Parents',
        street: 'Street 77',
        area: 'New Cairo',
        city: 'Cairo',
        etaText: '30-40 min',
        isDefault: true,
      ),
    );
    final defaultAddr = await accountRepo.watchDefaultAddress().first;
    expect(defaultAddr?.id, 'addr_new_cairo');

    await accountRepo.setColdPackagingAlert(false);
    await accountRepo.setDietaryLactoseFree(true);
    final settings = accountRepo.getSettings();
    expect(settings.coldPackagingAlert, isFalse);
    expect(settings.dietaryLactoseFree, isTrue);
  });
}
