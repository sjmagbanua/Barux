import 'package:barux/models/models.dart';
import 'package:bloc/bloc.dart';

import 'package:barux/pages/signup/bloc/bloc.dart';

class SignupBloc extends Bloc<SignupEvent, SingupState> {
  SignupBloc({
    required SingupState initialState,
  }) : super(initialState) {
    on<FullNameChanged>(_fullnameChange);
    on<EmailChanged>(_emailChanged);
    on<PasswordChanged>(_passwordChanged);
    on<ConfirmPasswordChanged>(_confirmPasswordChanged);
  }

  void _emailChanged(EmailChanged event, Emitter<SingupState> emit) {
    var email = event.value;
    var errorType = ErrorType.empty;
    if (email.isEmpty) {
      errorType = ErrorType.empty;
    } else if (!RegExp(
            r'^(([^<>()[\]\\.,;:\s@\“]+(\.[^<>()[\]\\.,;:\s@\“]+)*)|(\“.+\“))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$',
            caseSensitive: false)
        .hasMatch(email)) {
      errorType = ErrorType.format;
    } else {
      errorType = ErrorType.none;
    }
    emit(
      state.copyWith.emailValue(
        value: email,
        errorType: errorType,
      ),
    );
  }

  void _fullnameChange(FullNameChanged event, Emitter<SingupState> emit) {
    var fullname = event.value;
    var errorType = ErrorType.empty;
    if (fullname.isEmpty) {
      errorType = ErrorType.empty;
    } else {
      errorType = ErrorType.none;
    }
    emit(
      state.copyWith.fullNameValue(
        value: fullname,
        errorType: errorType,
      ),
    );
  }

  void _passwordChanged(PasswordChanged event, Emitter<SingupState> emit) {
    var password = event.value;
    var errorType = ErrorType.empty;
    if (password.isEmpty) {
      errorType = ErrorType.empty;
    } else {
      errorType = ErrorType.none;
    }
    emit(
      state.copyWith.passwordValue(
        value: password,
        errorType: errorType,
      ),
    );
  }

  void _confirmPasswordChanged(
      ConfirmPasswordChanged event, Emitter<SingupState> emit) {
    var confirmPassword = event.value;
    var errorType = ErrorType.empty;
    print('here $confirmPassword');
    if (confirmPassword.isEmpty) {
      errorType = ErrorType.empty;
    } else {
      errorType = ErrorType.none;
    }
    emit(
      state.copyWith.confirmPasswordValue(
        value: confirmPassword,
        errorType: errorType,
      ),
    );
  }
}
