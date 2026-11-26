// Widget tests for HomeScreen main states.
// Uses an in-memory AppDatabase and SharedPreferences mock.

import 'package:drift/native.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:remas_land/core/constants/app_strings.dart';
import 'package:remas_land/core/database/app_database.dart';
import 'package:remas_land/core/database/database_provider.dart';
import 'package:remas_land/core/database/seed/database_seeder.dart';
import 'package:remas_land/core/storage/prefs_service.dart';
import 'package:remas_land/features/home/domain/home_feed_entity.dart';
import 'package:remas_land/features/home/presentation/home_provider.dart';
import 'package:remas_land/features/home/presentation/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

// ---------------------------------------------------------------------------
// Helpers
// ---------------------------------------------------------------------------

AppDatabase buildInMemoryDb() => AppDatabase.forTesting(NativeDatabase.memory());

GoRouter testRouter(Widget home) => GoRouter(
      initialLocation: '/home',
      routes: [
        GoRoute(path: '/home', builder: (_, _) => home),
        GoRoute(
          path: '/category/:slug',
          builder: (_, _) => const SizedBox.shrink(),
        ),
        GoRoute(
          path: '/product/:id',
          builder: (_, _) => const SizedBox.shrink(),
        ),
      ],
    );

Future<SharedPreferences> buildTestSharedPrefs() async {
  SharedPreferences.setMockInitialValues({});
  return SharedPreferences.getInstance();
}

Widget makeWidget({
  required AppDatabase db,
  required SharedPreferences sharedPrefs,
  GoRouter? router,
  List<dynamic> extraOverrides = const [],
}) {
  return ProviderScope(
    overrides: [
      appDatabaseProvider.overrideWithValue(db),
      sharedPreferencesProvider.overrideWithValue(sharedPrefs),
      ...extraOverrides.cast(),
    ],
    child: MediaQuery(
      data: const MediaQueryData(size: Size(390, 844)),
      child: MaterialApp.router(
        routerConfig: router ?? testRouter(const HomeScreen()),
      ),
    ),
  );
}

Future<void> disposeAndClose(WidgetTester tester, AppDatabase db) async {
  await tester.pumpWidget(const SizedBox.shrink());
  await tester.pump(const Duration(milliseconds: 50));
  await tester.pump(const Duration(milliseconds: 50));
  await tester.runAsync(db.close);
}

// ---------------------------------------------------------------------------
// Tests
// ---------------------------------------------------------------------------

void main() {
  group('HomeScreen', () {
    late AppDatabase db;
    late SharedPreferences sharedPrefs;

    setUp(() async {
      db = buildInMemoryDb();
      sharedPrefs = await buildTestSharedPrefs();
    });

    testWidgets('shows loading indicator while feed is loading', (
      tester,
    ) async {
      await tester.pumpWidget(
        makeWidget(
          db: db,
          sharedPrefs: sharedPrefs,
          extraOverrides: [
            homeFeedProvider.overrideWithValue(
              const AsyncValue<HomeFeedEntity>.loading(),
            ),
          ],
        ),
      );

      await tester.pump();
      expect(find.byType(CircularProgressIndicator), findsOneWidget);
      await disposeAndClose(tester, db);
    });

    testWidgets('shows error view when feed errors', (tester) async {
      await tester.pumpWidget(
        makeWidget(
          db: db,
          sharedPrefs: sharedPrefs,
          extraOverrides: [
            homeFeedProvider.overrideWithValue(
              AsyncValue<HomeFeedEntity>.error(
                Exception('DB error'),
                StackTrace.empty,
              ),
            ),
          ],
        ),
      );

      await tester.pump();
      expect(find.text(AppStrings.genericErrorTitle), findsOneWidget);
      await disposeAndClose(tester, db);
    });

    testWidgets('shows section headers when feed has data', (tester) async {
      tester.view.physicalSize = const Size(390, 844);
      tester.view.devicePixelRatio = 1.0;
      addTearDown(tester.view.reset);

      final seeder = DatabaseSeeder(db: db, prefs: PrefsService(sharedPrefs));
      await seeder.seedIfNeeded();

      await tester.pumpWidget(makeWidget(db: db, sharedPrefs: sharedPrefs));
      await tester.pump();
      await tester.pump(const Duration(milliseconds: 200));

      expect(find.text(AppStrings.categoriesTitleAr), findsOneWidget);

      await tester.drag(find.byType(CustomScrollView), const Offset(0, -550));
      await tester.pump();
      expect(find.text(AppStrings.mostSoldTitle), findsOneWidget);

      await disposeAndClose(tester, db);
    });

    testWidgets('tapping first View All navigates to /category/all', (
      tester,
    ) async {
      tester.view.physicalSize = const Size(390, 844);
      tester.view.devicePixelRatio = 1.0;
      addTearDown(tester.view.reset);

      final seeder = DatabaseSeeder(db: db, prefs: PrefsService(sharedPrefs));
      await seeder.seedIfNeeded();

      String? pushedSlug;
      final router = GoRouter(
        initialLocation: '/home',
        routes: [
          GoRoute(path: '/home', builder: (_, _) => const HomeScreen()),
          GoRoute(
            path: '/category/:slug',
            builder: (_, state) {
              pushedSlug = state.pathParameters['slug'];
              return const SizedBox.shrink();
            },
          ),
          GoRoute(
            path: '/product/:id',
            builder: (_, _) => const SizedBox.shrink(),
          ),
        ],
      );

      await tester.pumpWidget(
        makeWidget(db: db, sharedPrefs: sharedPrefs, router: router),
      );
      await tester.pump();
      await tester.pump(const Duration(milliseconds: 200));

      final viewMoreFinder = find.text(AppStrings.viewMoreAr);
      expect(viewMoreFinder, findsWidgets);
      await tester.tap(viewMoreFinder.first);
      await tester.pump();
      await tester.pump(const Duration(milliseconds: 200));
      expect(pushedSlug, 'all');

      await disposeAndClose(tester, db);
    });

    testWidgets('tapping a Most Sold product navigates to /product/:id', (
      tester,
    ) async {
      tester.view.physicalSize = const Size(390, 844);
      tester.view.devicePixelRatio = 1.0;
      addTearDown(tester.view.reset);

      final seeder = DatabaseSeeder(db: db, prefs: PrefsService(sharedPrefs));
      await seeder.seedIfNeeded();

      String? pushedId;
      final router = GoRouter(
        initialLocation: '/home',
        routes: [
          GoRoute(path: '/home', builder: (_, _) => const HomeScreen()),
          GoRoute(
            path: '/category/:slug',
            builder: (_, _) => const SizedBox.shrink(),
          ),
          GoRoute(
            path: '/product/:id',
            builder: (_, state) {
              pushedId = state.pathParameters['id'];
              return const SizedBox.shrink();
            },
          ),
        ],
      );

      await tester.pumpWidget(
        makeWidget(db: db, sharedPrefs: sharedPrefs, router: router),
      );
      await tester.pump();
      await tester.pump(const Duration(milliseconds: 200));

      await tester.drag(find.byType(CustomScrollView), const Offset(0, -550));
      await tester.pump();
      await tester.tap(find.text(AppStrings.startingLabel).first);
      await tester.pump();
      await tester.pump(const Duration(milliseconds: 200));
      expect(pushedId, isNotNull);

      await disposeAndClose(tester, db);
    });
  });
}
