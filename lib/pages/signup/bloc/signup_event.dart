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

class PasswordToggle extends SignupEvent {
  final bool toggle;
  PasswordToggle(this.toggle);
}

class ConfirmPasswordToggle extends SignupEvent {
  final bool confirmPassToggle;
  ConfirmPasswordToggle(this.confirmPassToggle);
}
