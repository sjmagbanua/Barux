abstract class SignupEvent {
  const SignupEvent();
}

class FullNameChanged extends SignupEvent {
  final String value;
  FullNameChanged(this.value);
}

class EmailChanged extends SignupEvent {
  final String value;
  EmailChanged(this.value);
}

class PasswordChanged extends SignupEvent {
  final String value;
  PasswordChanged(this.value);
}

class ConfirmPasswordChanged extends SignupEvent {
  final String value;
  ConfirmPasswordChanged(this.value);
}
