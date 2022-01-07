import 'name_validator.dart';

void main(List<String> arguments) {
  final String anEmptyName = "";
  final String aVeryLongName = "kjkrljg jkrgj jkj gkjkjgk kl kjlkkljklj";
  final aValidName = "Ahmed";
  final validator = NameValidator().validator;
  final validationResult = validator.validate(anEmptyName);
  final secondVR = validator.validate(aVeryLongName);
  final thirdVR = validator.validate(aValidName);

  print(validationResult);
}
