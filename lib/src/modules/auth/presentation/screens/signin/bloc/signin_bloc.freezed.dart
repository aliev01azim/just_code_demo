// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signin_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SigninEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) signingIn,
    required TResult Function() hidePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? signingIn,
    TResult? Function()? hidePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signingIn,
    TResult Function()? hidePassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SigningIn value) signingIn,
    required TResult Function(HidePassword value) hidePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SigningIn value)? signingIn,
    TResult? Function(HidePassword value)? hidePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SigningIn value)? signingIn,
    TResult Function(HidePassword value)? hidePassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SigninEventCopyWith<$Res> {
  factory $SigninEventCopyWith(
          SigninEvent value, $Res Function(SigninEvent) then) =
      _$SigninEventCopyWithImpl<$Res, SigninEvent>;
}

/// @nodoc
class _$SigninEventCopyWithImpl<$Res, $Val extends SigninEvent>
    implements $SigninEventCopyWith<$Res> {
  _$SigninEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SigningInImplCopyWith<$Res> {
  factory _$$SigningInImplCopyWith(
          _$SigningInImpl value, $Res Function(_$SigningInImpl) then) =
      __$$SigningInImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$SigningInImplCopyWithImpl<$Res>
    extends _$SigninEventCopyWithImpl<$Res, _$SigningInImpl>
    implements _$$SigningInImplCopyWith<$Res> {
  __$$SigningInImplCopyWithImpl(
      _$SigningInImpl _value, $Res Function(_$SigningInImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$SigningInImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SigningInImpl implements SigningIn {
  const _$SigningInImpl({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'SigninEvent.signingIn(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SigningInImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SigningInImplCopyWith<_$SigningInImpl> get copyWith =>
      __$$SigningInImplCopyWithImpl<_$SigningInImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) signingIn,
    required TResult Function() hidePassword,
  }) {
    return signingIn(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? signingIn,
    TResult? Function()? hidePassword,
  }) {
    return signingIn?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signingIn,
    TResult Function()? hidePassword,
    required TResult orElse(),
  }) {
    if (signingIn != null) {
      return signingIn(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SigningIn value) signingIn,
    required TResult Function(HidePassword value) hidePassword,
  }) {
    return signingIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SigningIn value)? signingIn,
    TResult? Function(HidePassword value)? hidePassword,
  }) {
    return signingIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SigningIn value)? signingIn,
    TResult Function(HidePassword value)? hidePassword,
    required TResult orElse(),
  }) {
    if (signingIn != null) {
      return signingIn(this);
    }
    return orElse();
  }
}

abstract class SigningIn implements SigninEvent {
  const factory SigningIn(
      {required final String email,
      required final String password}) = _$SigningInImpl;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$SigningInImplCopyWith<_$SigningInImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HidePasswordImplCopyWith<$Res> {
  factory _$$HidePasswordImplCopyWith(
          _$HidePasswordImpl value, $Res Function(_$HidePasswordImpl) then) =
      __$$HidePasswordImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HidePasswordImplCopyWithImpl<$Res>
    extends _$SigninEventCopyWithImpl<$Res, _$HidePasswordImpl>
    implements _$$HidePasswordImplCopyWith<$Res> {
  __$$HidePasswordImplCopyWithImpl(
      _$HidePasswordImpl _value, $Res Function(_$HidePasswordImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HidePasswordImpl implements HidePassword {
  const _$HidePasswordImpl();

  @override
  String toString() {
    return 'SigninEvent.hidePassword()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HidePasswordImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) signingIn,
    required TResult Function() hidePassword,
  }) {
    return hidePassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? signingIn,
    TResult? Function()? hidePassword,
  }) {
    return hidePassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signingIn,
    TResult Function()? hidePassword,
    required TResult orElse(),
  }) {
    if (hidePassword != null) {
      return hidePassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SigningIn value) signingIn,
    required TResult Function(HidePassword value) hidePassword,
  }) {
    return hidePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SigningIn value)? signingIn,
    TResult? Function(HidePassword value)? hidePassword,
  }) {
    return hidePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SigningIn value)? signingIn,
    TResult Function(HidePassword value)? hidePassword,
    required TResult orElse(),
  }) {
    if (hidePassword != null) {
      return hidePassword(this);
    }
    return orElse();
  }
}

abstract class HidePassword implements SigninEvent {
  const factory HidePassword() = _$HidePasswordImpl;
}

/// @nodoc
mixin _$SigninState {
  bool get show => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  UserModel? get user => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool show, bool loading, String? error, UserModel? user)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool show, bool loading, String? error, UserModel? user)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool show, bool loading, String? error, UserModel? user)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SigninStateCopyWith<SigninState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SigninStateCopyWith<$Res> {
  factory $SigninStateCopyWith(
          SigninState value, $Res Function(SigninState) then) =
      _$SigninStateCopyWithImpl<$Res, SigninState>;
  @useResult
  $Res call({bool show, bool loading, String? error, UserModel? user});
}

/// @nodoc
class _$SigninStateCopyWithImpl<$Res, $Val extends SigninState>
    implements $SigninStateCopyWith<$Res> {
  _$SigninStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? show = null,
    Object? loading = null,
    Object? error = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      show: null == show
          ? _value.show
          : show // ignore: cast_nullable_to_non_nullable
              as bool,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $SigninStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool show, bool loading, String? error, UserModel? user});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$SigninStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? show = null,
    Object? loading = null,
    Object? error = freezed,
    Object? user = freezed,
  }) {
    return _then(_$InitialImpl(
      show: null == show
          ? _value.show
          : show // ignore: cast_nullable_to_non_nullable
              as bool,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl(
      {this.show = false, this.loading = false, this.error, this.user});

  @override
  @JsonKey()
  final bool show;
  @override
  @JsonKey()
  final bool loading;
  @override
  final String? error;
  @override
  final UserModel? user;

  @override
  String toString() {
    return 'SigninState.initial(show: $show, loading: $loading, error: $error, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.show, show) || other.show == show) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, show, loading, error, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool show, bool loading, String? error, UserModel? user)
        initial,
  }) {
    return initial(show, loading, error, user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool show, bool loading, String? error, UserModel? user)?
        initial,
  }) {
    return initial?.call(show, loading, error, user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool show, bool loading, String? error, UserModel? user)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(show, loading, error, user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements SigninState {
  const factory Initial(
      {final bool show,
      final bool loading,
      final String? error,
      final UserModel? user}) = _$InitialImpl;

  @override
  bool get show;
  @override
  bool get loading;
  @override
  String? get error;
  @override
  UserModel? get user;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
