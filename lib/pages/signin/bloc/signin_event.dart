abstract class SigninEvent {
  const SigninEvent();
}

class EmailChanged extends SigninEvent {
  final String email;
  const EmailChanged(this.email);
}

class PasswordChanged extends SigninEvent {
  final String password;
  const PasswordChanged(this.password);
}
