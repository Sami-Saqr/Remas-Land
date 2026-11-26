# Architecture — Remas Land

## Folder Layout
```text
lib/
├── main.dart                     # App bootstrap, ProviderScope, DB init
├── app/
│   ├── app.dart                  # MaterialApp.router + AppTheme
│   ├── router/                   # GoRouter config + 5-tab StatefulShellRoute
│   └── theme/                    # Color, typography, spacing, radius, shadow tokens
├── core/
│   ├── constants/                # App strings, currency, asset paths, defaults
│   ├── database/                 # Drift AppDatabase, tables, seeders, DAOs
│   ├── errors/                   # Failure & exception types + ErrorMapper
│   ├── storage/                  # SharedPreferences wrapper for flags/prefs
│   ├── utils/                    # Formatters (EGP, dates), validators
│   └── widgets/                  # Shared UI kit (buttons, nav bar, cards, steppers)
└── features/
    ├── home/                     # data / domain / presentation
    ├── search/                   # data / domain / presentation
    ├── catalog/                  # data / domain / presentation
    ├── cart/                     # data / domain / presentation
    ├── wallet/                   # data / domain / presentation
    └── account/                  # data / domain / presentation
```

## Layer Rules (Feature-First Clean Architecture)
- **Domain**: Pure Dart entities (`freezed` / `equatable`), repository interfaces, use cases if needed. Zero Flutter/Drift imports.
- **Data**: Drift DAOs/data sources, models/mappers, repository implementations.
- **Presentation**: Riverpod `Notifier` / `AsyncNotifier` providers and UI screens/widgets. Never access Drift directly from UI.

## State Management (`flutter_riverpod`)
- Reactive streams from Drift (`watchAll`, `watchCartItems`, `watchBalance`) exposed via `StreamProvider` / `AsyncNotifierProvider`.
- Every screen renders explicit `loading`, `empty`, `error`, and `data` states.

## Routing (`go_router`)
- `StatefulShellRoute.indexedStack` for the 5 persistent bottom tabs:
  1. `/home` — Home
  2. `/search` — Search
  3. `/cart` — Cart (switches seamlessly between Empty Cart & Cart with Products)
  4. `/pay` — Remas Pay & Wallet
  5. `/more` — More & Account
- Pushed detail/sub-routes: `/category/:slug` (Category Products Page), plus future sub-screens from `More` & `Cart` checkout.

## Local Database (`drift`)
- Single local SQLite database (`remas_land.sqlite`, `schemaVersion = 1`) initialized via `path_provider` + `sqlite3_flutter_libs`, with `PRAGMA foreign_keys = ON` and an explicit `MigrationStrategy(onCreate, onUpgrade)`.
- **Monetary Representation**: All monetary columns and domain amounts are stored as integer **piasters** (`100 piasters = 1.00 EGP`) and formatted via `core/utils/formatters.dart`.
- **Tables (`core/database/tables/`)**: `Categories`, `Brands`, `Products`, `Banners`, `CartItems`, `Favorites`, `Addresses`, `Orders`, `OrderItems`, `WalletAccounts`, `WalletTransactions`, `SavedCards`, `PromoCodes`, `UserProfiles`.
- **DAOs (`core/database/daos/`)**: `CatalogDao`, `CartDao`, `OrdersDao`, `WalletDao`, `AccountDao`.
- **Idempotent Seeding (`core/database/seed/`)**: `DatabaseSeeder.seedIfNeeded()` runs once on first launch inside a transaction, tracked via `PrefsService` (`seed_version`).
- `shared_preferences` (`PrefsService`) stores lightweight UI flags (`seed_version`, `wallet_balance_hidden`, `cart_active_promo_code`, `pref_cold_packaging_alert`, `pref_dietary_lactose_free`).
