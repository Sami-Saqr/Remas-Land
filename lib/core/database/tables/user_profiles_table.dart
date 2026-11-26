import 'package:drift/drift.dart';

/// Local customer profile and membership status.
class UserProfiles extends Table {
  TextColumn get id => text()();
  TextColumn get fullName => text()();
  TextColumn get phone => text()();
  TextColumn get tierLabel => text()();
  TextColumn get avatarAsset => text()();
  BoolColumn get hasMorningPass =>
      boolean().withDefault(const Constant(true))();
  IntColumn get rewardsCount => integer().withDefault(const Constant(0))();
  TextColumn get referralCode => text()();

  @override
  Set<Column<Object>> get primaryKey => {id};
}
