import 'package:equatable/equatable.dart';

/// Typed domain failure hierarchy preventing raw exceptions from leaking to UI.
sealed class Failure extends Equatable implements Exception {
  const Failure(this.message);

  final String message;

  @override
  List<Object?> get props => [message];
}

/// Local SQLite / Drift persistence error.
final class DatabaseFailure extends Failure {
  const DatabaseFailure([super.message = 'Local database operation failed.']);
}

/// Local SharedPreferences storage error.
final class StorageFailure extends Failure {
  const StorageFailure([super.message = 'Local preferences operation failed.']);
}

/// Requested entity or record was not found.
final class NotFoundFailure extends Failure {
  const NotFoundFailure([super.message = 'Requested item was not found.']);
}

/// Domain validation error (e.g. invalid promo code, insufficient balance).
final class ValidationFailure extends Failure {
  const ValidationFailure(super.message);
}

/// Executes a repository action and maps unexpected exceptions to [Failure].
Future<T> guardDatabaseCall<T>(Future<T> Function() action) async {
  try {
    return await action();
  } on Failure {
    rethrow;
  } on Exception catch (error) {
    throw DatabaseFailure('Database error: $error');
  }
}
