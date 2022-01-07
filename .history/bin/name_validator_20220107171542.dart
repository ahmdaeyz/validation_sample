import '../src/domain/validation';
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
