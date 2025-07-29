// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SingupState {
  TextFieldInput get value => throw _privateConstructorUsedError;

  /// Create a copy of SingupState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SingupStateCopyWith<SingupState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingupStateCopyWith<$Res> {
  factory $SingupStateCopyWith(
          SingupState value, $Res Function(SingupState) then) =
      _$SingupStateCopyWithImpl<$Res, SingupState>;
  @useResult
  $Res call({TextFieldInput value});

  $TextFieldInputCopyWith<$Res> get value;
}

/// @nodoc
class _$SingupStateCopyWithImpl<$Res, $Val extends SingupState>
    implements $SingupStateCopyWith<$Res> {
  _$SingupStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SingupState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as TextFieldInput,
    ) as $Val);
  }

  /// Create a copy of SingupState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TextFieldInputCopyWith<$Res> get value {
    return $TextFieldInputCopyWith<$Res>(_value.value, (value) {
      return _then(_value.copyWith(value: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SingupStateImplCopyWith<$Res>
    implements $SingupStateCopyWith<$Res> {
  factory _$$SingupStateImplCopyWith(
          _$SingupStateImpl value, $Res Function(_$SingupStateImpl) then) =
      __$$SingupStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TextFieldInput value});

  @override
  $TextFieldInputCopyWith<$Res> get value;
}

/// @nodoc
class __$$SingupStateImplCopyWithImpl<$Res>
    extends _$SingupStateCopyWithImpl<$Res, _$SingupStateImpl>
    implements _$$SingupStateImplCopyWith<$Res> {
  __$$SingupStateImplCopyWithImpl(
      _$SingupStateImpl _value, $Res Function(_$SingupStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SingupState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$SingupStateImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as TextFieldInput,
    ));
  }
}

/// @nodoc

class _$SingupStateImpl implements _SingupState {
  const _$SingupStateImpl(
      {this.value = const TextFieldInput(errorType: ErrorType.empty)});

  @override
  @JsonKey()
  final TextFieldInput value;

  @override
  String toString() {
    return 'SingupState(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SingupStateImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of SingupState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SingupStateImplCopyWith<_$SingupStateImpl> get copyWith =>
      __$$SingupStateImplCopyWithImpl<_$SingupStateImpl>(this, _$identity);
}

abstract class _SingupState implements SingupState {
  const factory _SingupState({final TextFieldInput value}) = _$SingupStateImpl;

  @override
  TextFieldInput get value;

  /// Create a copy of SingupState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SingupStateImplCopyWith<_$SingupStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
