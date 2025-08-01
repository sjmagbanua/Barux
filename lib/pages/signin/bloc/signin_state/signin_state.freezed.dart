// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signin_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SigninState {
  TextFieldInput get emailValue => throw _privateConstructorUsedError;
  TextFieldInput get passwordValue => throw _privateConstructorUsedError;
  bool get toggle => throw _privateConstructorUsedError;

  /// Create a copy of SigninState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SigninStateCopyWith<SigninState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SigninStateCopyWith<$Res> {
  factory $SigninStateCopyWith(
          SigninState value, $Res Function(SigninState) then) =
      _$SigninStateCopyWithImpl<$Res, SigninState>;
  @useResult
  $Res call(
      {TextFieldInput emailValue, TextFieldInput passwordValue, bool toggle});

  $TextFieldInputCopyWith<$Res> get emailValue;
  $TextFieldInputCopyWith<$Res> get passwordValue;
}

/// @nodoc
class _$SigninStateCopyWithImpl<$Res, $Val extends SigninState>
    implements $SigninStateCopyWith<$Res> {
  _$SigninStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SigninState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailValue = null,
    Object? passwordValue = null,
    Object? toggle = null,
  }) {
    return _then(_value.copyWith(
      emailValue: null == emailValue
          ? _value.emailValue
          : emailValue // ignore: cast_nullable_to_non_nullable
              as TextFieldInput,
      passwordValue: null == passwordValue
          ? _value.passwordValue
          : passwordValue // ignore: cast_nullable_to_non_nullable
              as TextFieldInput,
      toggle: null == toggle
          ? _value.toggle
          : toggle // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of SigninState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TextFieldInputCopyWith<$Res> get emailValue {
    return $TextFieldInputCopyWith<$Res>(_value.emailValue, (value) {
      return _then(_value.copyWith(emailValue: value) as $Val);
    });
  }

  /// Create a copy of SigninState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TextFieldInputCopyWith<$Res> get passwordValue {
    return $TextFieldInputCopyWith<$Res>(_value.passwordValue, (value) {
      return _then(_value.copyWith(passwordValue: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SigninStateImplCopyWith<$Res>
    implements $SigninStateCopyWith<$Res> {
  factory _$$SigninStateImplCopyWith(
          _$SigninStateImpl value, $Res Function(_$SigninStateImpl) then) =
      __$$SigninStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TextFieldInput emailValue, TextFieldInput passwordValue, bool toggle});

  @override
  $TextFieldInputCopyWith<$Res> get emailValue;
  @override
  $TextFieldInputCopyWith<$Res> get passwordValue;
}

/// @nodoc
class __$$SigninStateImplCopyWithImpl<$Res>
    extends _$SigninStateCopyWithImpl<$Res, _$SigninStateImpl>
    implements _$$SigninStateImplCopyWith<$Res> {
  __$$SigninStateImplCopyWithImpl(
      _$SigninStateImpl _value, $Res Function(_$SigninStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SigninState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailValue = null,
    Object? passwordValue = null,
    Object? toggle = null,
  }) {
    return _then(_$SigninStateImpl(
      emailValue: null == emailValue
          ? _value.emailValue
          : emailValue // ignore: cast_nullable_to_non_nullable
              as TextFieldInput,
      passwordValue: null == passwordValue
          ? _value.passwordValue
          : passwordValue // ignore: cast_nullable_to_non_nullable
              as TextFieldInput,
      toggle: null == toggle
          ? _value.toggle
          : toggle // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SigninStateImpl implements _SigninState {
  const _$SigninStateImpl(
      {this.emailValue = const TextFieldInput(errorType: ErrorType.empty),
      this.passwordValue = const TextFieldInput(errorType: ErrorType.empty),
      this.toggle = false});

  @override
  @JsonKey()
  final TextFieldInput emailValue;
  @override
  @JsonKey()
  final TextFieldInput passwordValue;
  @override
  @JsonKey()
  final bool toggle;

  @override
  String toString() {
    return 'SigninState(emailValue: $emailValue, passwordValue: $passwordValue, toggle: $toggle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SigninStateImpl &&
            (identical(other.emailValue, emailValue) ||
                other.emailValue == emailValue) &&
            (identical(other.passwordValue, passwordValue) ||
                other.passwordValue == passwordValue) &&
            (identical(other.toggle, toggle) || other.toggle == toggle));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, emailValue, passwordValue, toggle);

  /// Create a copy of SigninState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SigninStateImplCopyWith<_$SigninStateImpl> get copyWith =>
      __$$SigninStateImplCopyWithImpl<_$SigninStateImpl>(this, _$identity);
}

abstract class _SigninState implements SigninState {
  const factory _SigninState(
      {final TextFieldInput emailValue,
      final TextFieldInput passwordValue,
      final bool toggle}) = _$SigninStateImpl;

  @override
  TextFieldInput get emailValue;
  @override
  TextFieldInput get passwordValue;
  @override
  bool get toggle;

  /// Create a copy of SigninState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SigninStateImplCopyWith<_$SigninStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
