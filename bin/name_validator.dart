
import 'package:validation_sample/validation_rule.dart';
import 'package:validation_sample/validator.dart';

class NameValidator extends Validator<String, String> {
  NameValidator();

  @override
  List<ValidationRule<String, String>> get rules => [
        ValidationRule(
            ruler: (value) => value.isNotEmpty,
            negFeedback: "Name can't be empty."),
        ValidationRule(
            ruler: (value) => value.length <= 20,
            negFeedback: "Name can't be more than 20 characters.")
      ];
}
