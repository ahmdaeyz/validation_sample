import 'package:equatable/equatable.dart';

import 'validation_result.dart';

/// A rule may represent a constraint, matcher..etc
class ValidationRule<T, U> extends Equatable {
  /// A predicate that represents your rule
  final bool Function(T) ruler;
  final ValidationResult<U> _negativeFeedback;

  ValidationRule({required this.ruler, required U negFeedback})
      : _negativeFeedback = ValidationResult.invalid(reason: negFeedback);

  /// Checks the state of the [value] according to the specified [ruler]
  ValidationResult apply(T value) {
    if (ruler(value)) {
      return ValidationResult.valid();
    }
    return _negativeFeedback;
  }

  @override
  List<Object?> get props => [ruler, _negativeFeedback];
}
