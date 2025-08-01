import 'package:barux/models/models.dart';
import 'package:barux/pages/signin/bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SigninBloc extends Bloc<SigninEvent, SigninState> {
  SigninBloc({
    required SigninState initialState,
  }) : super(initialState) {
    on<EmailChanged>(_emailChanged);
    on<PasswordChanged>(_passwordChanged);
  }

  void _emailChanged(EmailChanged event, Emitter<SigninState> emit) {
    var emailVal = event.email;
    var errorType = ErrorType.empty;
    if (emailVal.isEmpty) {
      errorType = ErrorType.empty;
    } else if (!RegExp(
            r'^(([^<>()[\]\\.,;:\s@\“]+(\.[^<>()[\]\\.,;:\s@\“]+)*)|(\“.+\“))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$',
            caseSensitive: false)
        .hasMatch(emailVal)) {
      errorType = ErrorType.format;
    } else {
      errorType = ErrorType.none;
    }
    emit(
      state.copyWith.emailValue(
        value: emailVal,
        errorType: errorType,
      ),
    );
  }

  void _passwordChanged(PasswordChanged event, Emitter<SigninState> emit) {
    var password = event.password;
    print("here $password");

    emit(
      state.copyWith.passwordValue(
        value: password,
        // errorType: errorType
      ),
    );
  }
}
