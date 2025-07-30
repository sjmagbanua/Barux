// ignore_for_file: depend_on_referenced_packages
import 'package:barux/models/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'signup_state.freezed.dart';

@freezed
class SingupState with _$SingupState {
  const factory SingupState({
    @Default(TextFieldInput(
      errorType: ErrorType.empty,
    ))
    TextFieldInput fullNameValue,
    @Default(TextFieldInput(
      errorType: ErrorType.empty,
    ))
    TextFieldInput emailValue,
    @Default(TextFieldInput(
      errorType: ErrorType.empty,
    ))
    TextFieldInput passwordValue,
    @Default(TextFieldInput(
      errorType: ErrorType.empty,
    ))
    TextFieldInput confirmPasswordValue,
    @Default(false) bool toggle,
    @Default(false) bool confirmPassToggle,
  }) = _SingupState;
}
