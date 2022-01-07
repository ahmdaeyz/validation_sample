import '../src/domain/validation/validation_result.dart';
import '../src/domain/validation/validation_rule.dart';
import '../src/domain/validation/validation_result.dart';

class NameValidator {
  NameValidator();

  final List<ValidationRule<String, String>> _rules = [
    ValidationRule(
        ruler: (String value) {
          if (value.isNotEmpty) {
            return true;
          }
          return false;
        },
        negativeFeedback:
            ValidationResult.invalid(reason: "Name can't be empty.")),
    ValidationRule(
        ruler: (String value) {
          if (value.length > 20) {
            return true;
          }
          return false;
        },
        negativeFeedback: ValidationResult.invalid(
            reason: "Name can't be more than 20 characters."))
  ];

  Validator<String, String> get validator {
    return Validator(rules: _rules);
  }
}
