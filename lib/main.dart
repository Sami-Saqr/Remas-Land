import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remas_land/app/app.dart';
import 'package:remas_land/core/database/app_database.dart';
import 'package:remas_land/core/database/database_provider.dart';
import 'package:remas_land/core/database/seed/database_seeder.dart';
import 'package:remas_land/core/storage/prefs_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Application entrypoint for Remas Land.
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final sharedPrefs = await SharedPreferences.getInstance();
  final prefsService = PrefsService(sharedPrefs);
  final database = AppDatabase();
  await DatabaseSeeder(db: database, prefs: prefsService).seedIfNeeded();

  runApp(
    ProviderScope(
      overrides: [
        sharedPreferencesProvider.overrideWithValue(sharedPrefs),
        appDatabaseProvider.overrideWithValue(database),
      ],
      child: const RemasLandApp(),
    ),
  );
}
