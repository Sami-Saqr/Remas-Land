import 'package:drift/native.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:remas_land/app/app.dart';
import 'package:remas_land/app/router/app_router.dart';
import 'package:remas_land/core/constants/app_strings.dart';
import 'package:remas_land/core/database/app_database.dart';
import 'package:remas_land/core/database/database_provider.dart';
import 'package:remas_land/core/storage/prefs_service.dart';
import 'package:remas_land/core/widgets/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  testWidgets('RemasLandApp renders 5-tab shell and switches tabs', (
    WidgetTester tester,
  ) async {
    tester.view.physicalSize = const Size(390, 844);
    tester.view.devicePixelRatio = 1.0;
    addTearDown(tester.view.reset);

    SharedPreferences.setMockInitialValues({});
    final sharedPrefs = await SharedPreferences.getInstance();
    final db = AppDatabase.forTesting(NativeDatabase.memory());

    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          appDatabaseProvider.overrideWithValue(db),
          sharedPreferencesProvider.overrideWithValue(sharedPrefs),
          cartBadgeCountProvider.overrideWithValue(0),
        ],
        child: const RemasLandApp(),
      ),
    );
    // Splash screen transitions smoothly to Login after 2.2s
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 2300));
    await tester.pumpAndSettle();
    expect(find.text('SIGN IN'), findsOneWidget);

    // Fill required fields & tap SIGN IN
    await tester.enterText(find.byType(TextFormField).at(0), 'user@remas.eg');
    await tester.enterText(find.byType(TextFormField).at(1), 'secret123');
    await tester.tap(find.text('SIGN IN'));
    await tester.pumpAndSettle();

    expect(find.text(AppStrings.deliverToLabel), findsOneWidget);
    expect(find.text(AppStrings.navHome), findsOneWidget);
    expect(find.text(AppStrings.navSearch), findsOneWidget);
    expect(find.text(AppStrings.navCart), findsOneWidget);
    expect(find.text(AppStrings.navProfile), findsOneWidget);

    await tester.tap(find.text(AppStrings.navProfile));
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 100));
    expect(find.text(AppStrings.navProfile), findsNWidgets(2));

    await tester.tap(find.text(AppStrings.navCart));
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 100));
    expect(find.text(AppStrings.myCartTitle), findsOneWidget);

    await tester.pumpWidget(const SizedBox.shrink());
    await tester.pump(const Duration(milliseconds: 50));
    await tester.pump(const Duration(milliseconds: 50));
    await tester.runAsync(db.close);
  });

  testWidgets('Shared stepper and empty state widgets work', (
    WidgetTester tester,
  ) async {
    var qty = 1;

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: StatefulBuilder(
            builder: (context, setState) {
              return Column(
                children: [
                  AppQuantityStepper(
                    quantity: qty,
                    onDecrement: () => setState(() => qty--),
                    onIncrement: () => setState(() => qty++),
                  ),
                  const Expanded(child: AppEmptyView()),
                ],
              );
            },
          ),
        ),
      ),
    );

    expect(find.text('1'), findsOneWidget);
    expect(find.text(AppStrings.emptyListTitle), findsOneWidget);
  });
}
