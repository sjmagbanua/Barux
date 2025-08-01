abstract class SigninEvent {
  const SigninEvent();
}

class EmailChanged extends SigninEvent {
  final String value;
  const EmailChanged(this.value);
}

class PasswordChanged extends SigninEvent {
  final String password;
  const PasswordChanged(this.password);
}
