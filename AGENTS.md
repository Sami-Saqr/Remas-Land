# AGENTS.md — Remas Land Engineering Rules

## 1. Project Identity & Scope
- **App**: Remas Land (English only, Android + iOS, local SQLite backend via Drift — no remote server).
- **Architecture**: Feature-first Clean Architecture (`data` / `domain` / `presentation`) under `lib/features/<feature>/`, with shared infrastructure in `lib/core/` and app shell in `lib/app/`.
- **State & Navigation**: `flutter_riverpod` for state management; `go_router` for declarative routing; `drift` (+ `sqlite3_flutter_libs`) for local persistence; `shared_preferences` for lightweight preferences; `freezed` + `json_annotation` + `equatable` for immutable models/entities.

## 2. Coding & UI Standards
- **File size limit**: Keep every Dart file under ~300 lines. Split large widgets/controllers into focused private or feature widgets.
- **Naming**: `snake_case.dart` files, `PascalCase` classes/widgets/enums, `camelCase` members. Suffixes: `*_screen.dart`, `*_widget.dart`, `*_provider.dart`, `*_repository.dart`, `*_dao.dart`, `*_table.dart`, `*_entity.dart`, `*_model.dart`.
- **No hardcoded values**: Never hardcode colors, text styles, spacing, radii, shadows, or repeated UI strings. Always use tokens from `lib/app/theme/` and constants from `lib/core/constants/`.
- **State handling**: Every async/list screen or widget MUST explicitly handle **loading**, **empty**, **error**, and **success** states.
- **Widget reuse**: Check `lib/core/widgets/` before creating a new shared button, card, badge, stepper, or bottom bar.
- **No new packages**: Do NOT add any package to `pubspec.yaml` without asking the user first.
- **Verification**: Always run `flutter analyze` (and relevant tests) and ensure zero errors/warnings before finishing any task.

## 3. Token-Saving Session Workflow
1. **Session start**: Read ONLY `handover.md` + the specific doc(s) relevant to the current milestone (e.g. `docs/DESIGN_TOKENS.md`, `docs/SCREENS.md`).
2. **One milestone per session**: Complete only the active milestone; do not jump ahead.
3. **Targeted reads**: Never re-read the whole codebase; inspect only the files required for the current edit.
4. **Session end**: Update `handover.md` (keep under 60 lines) and check off the completed milestone in `docs/MILESTONES.md`.
