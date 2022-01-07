import 'package:freezed_annotation/freezed_annotation.dart';
part 'validation_result.freezed.dart';

@freezed
class ValidationResult<U> with _$ValidationResult {
  factory ValidationResult.valid() = Valid;
  factory ValidationResult.invalid({required U reason}) = Invalid;
}
