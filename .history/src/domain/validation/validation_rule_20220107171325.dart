import 'package:equatable/equatable.dart';
import 'package:flutter_validation_sample/core/domain/validation/validation_result.dart';

import 'validation_result.dart';

class ValidationRule<T, U> extends Equatable {
  final bool Function(T) ruler;
  final ValidationResult<U> negativeFeedback;

  const ValidationRule({required this.ruler, required this.negativeFeedback});

  ValidationResult apply(T value) {
    if (ruler(value)) {
      return ValidationResult.valid();
    }
    return negativeFeedback;
  }

  @override
  List<Object?> get props => [ruler, negativeFeedback];
}
