import 'package:equatable/equatable.dart';
import 'package:collection/collection.dart';

import 'validation_result.dart';
import 'validation_rule.dart';

/// A validator has [rules] which a value will be [validate]d against
/// 
/// [T] being the type of the value you are validating against.
/// 
/// [U] being the type of your negative feedback.
/// 
/// ```dart
/// class NameValidator extends Validator<String, String> {
///  NameValidator();
///
///  @override
///  List<ValidationRule<String, String>> get rules => [
///        ValidationRule(
///            ruler: (value) => value.isNotEmpty,
///            negFeedback: "Name can't be empty."),
///        ValidationRule(
///            ruler: (value) => value.length <= 20,
///            negFeedback: "Name can't be more than 20 characters.")
///      ];
///}
/// ```
abstract class Validator<T, U> extends Equatable {
  List<ValidationRule<T, U>> get rules;

  ValidationResult validate(T value) {
    return rules
            .map((e) => e.apply(value))
            .firstWhereOrNull((element) => element is Invalid) ??
        ValidationResult.valid();
  }

  @override
  List<Object?> get props => [rules];
}
