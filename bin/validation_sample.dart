
import 'name_validator.dart';

void main(List<String> arguments) {
  final anEmptyName = "";
  final aVeryLongName = "kjkrljg jkrgj jkj gkjkjgk kl kjlkkljklj";
  final aValidName = "Ahmed";
  final nameValidator = NameValidator();
  final firstValidation = nameValidator.validate(anEmptyName);
  final secondValidation = nameValidator.validate(aVeryLongName);
  final thirdValidation = nameValidator.validate(aValidName);

  print(firstValidation);
  print(secondValidation);
  print(thirdValidation);
}
