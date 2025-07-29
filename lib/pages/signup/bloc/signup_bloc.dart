import 'package:barux/models/models.dart';
import 'package:bloc/bloc.dart';

import 'package:barux/pages/signup/bloc/bloc.dart';

class SignupBloc extends Bloc<SignupEvent, SingupState> {
  SignupBloc({
    required SingupState initialState,
  }) : super(initialState) {
    on<EmailChanged>(_emailChanged);
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
      state.copyWith.value(
        value: email,
        errorType: errorType,
      ),
    );
  }

  
}
