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
    TextFieldInput value,
  }) = _SingupState;
}
