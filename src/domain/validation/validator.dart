import 'package:equatable/equatable.dart';
import 'package:collection/collection.dart';

import 'validation_result.dart';
import 'validation_rule.dart';

class Validator<T, U> extends Equatable {
  final List<ValidationRule<T, U>> rules;

  const Validator({required this.rules});

  ValidationResult validate(T value) {
    return rules
            .map((e) => e.apply(value))
            .firstWhereOrNull((element) => element is Invalid) ??
        ValidationResult.valid();
  }

  @override
  List<Object?> get props => [rules];
}
