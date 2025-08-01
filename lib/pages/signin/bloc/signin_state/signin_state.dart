// ignore_for_file: depend_on_referenced_packages
import 'package:barux/models/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'signin_state.freezed.dart';

@freezed
class SigninState with _$SigninState {
  const factory SigninState({
    @Default(TextFieldInput(
      errorType: ErrorType.empty,
    ))
    TextFieldInput emailValue,
    @Default(TextFieldInput(
      errorType: ErrorType.empty,
    ))
    TextFieldInput passwordValue,
    @Default(false) bool toggle,
  }) = _SigninState;
}
