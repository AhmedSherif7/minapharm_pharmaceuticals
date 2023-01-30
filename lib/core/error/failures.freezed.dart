// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Failure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HttpErrorType httpErrorType) httpFailure,
    required TResult Function(AuthErrorType authErrorType) authFailure,
    required TResult Function(String message) databaseFailure,
    required TResult Function() cacheFailure,
    required TResult Function() unKnownFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HttpErrorType httpErrorType)? httpFailure,
    TResult? Function(AuthErrorType authErrorType)? authFailure,
    TResult? Function(String message)? databaseFailure,
    TResult? Function()? cacheFailure,
    TResult? Function()? unKnownFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HttpErrorType httpErrorType)? httpFailure,
    TResult Function(AuthErrorType authErrorType)? authFailure,
    TResult Function(String message)? databaseFailure,
    TResult Function()? cacheFailure,
    TResult Function()? unKnownFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HttpFailure value) httpFailure,
    required TResult Function(_AuthFailure value) authFailure,
    required TResult Function(_DatabaseFailure value) databaseFailure,
    required TResult Function(_CacheFailure value) cacheFailure,
    required TResult Function(_UnKnownFailure value) unKnownFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HttpFailure value)? httpFailure,
    TResult? Function(_AuthFailure value)? authFailure,
    TResult? Function(_DatabaseFailure value)? databaseFailure,
    TResult? Function(_CacheFailure value)? cacheFailure,
    TResult? Function(_UnKnownFailure value)? unKnownFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HttpFailure value)? httpFailure,
    TResult Function(_AuthFailure value)? authFailure,
    TResult Function(_DatabaseFailure value)? databaseFailure,
    TResult Function(_CacheFailure value)? cacheFailure,
    TResult Function(_UnKnownFailure value)? unKnownFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res, Failure>;
}

/// @nodoc
class _$FailureCopyWithImpl<$Res, $Val extends Failure>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_HttpFailureCopyWith<$Res> {
  factory _$$_HttpFailureCopyWith(
          _$_HttpFailure value, $Res Function(_$_HttpFailure) then) =
      __$$_HttpFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({HttpErrorType httpErrorType});
}

/// @nodoc
class __$$_HttpFailureCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$_HttpFailure>
    implements _$$_HttpFailureCopyWith<$Res> {
  __$$_HttpFailureCopyWithImpl(
      _$_HttpFailure _value, $Res Function(_$_HttpFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? httpErrorType = null,
  }) {
    return _then(_$_HttpFailure(
      null == httpErrorType
          ? _value.httpErrorType
          : httpErrorType // ignore: cast_nullable_to_non_nullable
              as HttpErrorType,
    ));
  }
}

/// @nodoc

class _$_HttpFailure extends _HttpFailure {
  const _$_HttpFailure(this.httpErrorType) : super._();

  @override
  final HttpErrorType httpErrorType;

  @override
  String toString() {
    return 'Failure.httpFailure(httpErrorType: $httpErrorType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HttpFailure &&
            (identical(other.httpErrorType, httpErrorType) ||
                other.httpErrorType == httpErrorType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, httpErrorType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HttpFailureCopyWith<_$_HttpFailure> get copyWith =>
      __$$_HttpFailureCopyWithImpl<_$_HttpFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HttpErrorType httpErrorType) httpFailure,
    required TResult Function(AuthErrorType authErrorType) authFailure,
    required TResult Function(String message) databaseFailure,
    required TResult Function() cacheFailure,
    required TResult Function() unKnownFailure,
  }) {
    return httpFailure(httpErrorType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HttpErrorType httpErrorType)? httpFailure,
    TResult? Function(AuthErrorType authErrorType)? authFailure,
    TResult? Function(String message)? databaseFailure,
    TResult? Function()? cacheFailure,
    TResult? Function()? unKnownFailure,
  }) {
    return httpFailure?.call(httpErrorType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HttpErrorType httpErrorType)? httpFailure,
    TResult Function(AuthErrorType authErrorType)? authFailure,
    TResult Function(String message)? databaseFailure,
    TResult Function()? cacheFailure,
    TResult Function()? unKnownFailure,
    required TResult orElse(),
  }) {
    if (httpFailure != null) {
      return httpFailure(httpErrorType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HttpFailure value) httpFailure,
    required TResult Function(_AuthFailure value) authFailure,
    required TResult Function(_DatabaseFailure value) databaseFailure,
    required TResult Function(_CacheFailure value) cacheFailure,
    required TResult Function(_UnKnownFailure value) unKnownFailure,
  }) {
    return httpFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HttpFailure value)? httpFailure,
    TResult? Function(_AuthFailure value)? authFailure,
    TResult? Function(_DatabaseFailure value)? databaseFailure,
    TResult? Function(_CacheFailure value)? cacheFailure,
    TResult? Function(_UnKnownFailure value)? unKnownFailure,
  }) {
    return httpFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HttpFailure value)? httpFailure,
    TResult Function(_AuthFailure value)? authFailure,
    TResult Function(_DatabaseFailure value)? databaseFailure,
    TResult Function(_CacheFailure value)? cacheFailure,
    TResult Function(_UnKnownFailure value)? unKnownFailure,
    required TResult orElse(),
  }) {
    if (httpFailure != null) {
      return httpFailure(this);
    }
    return orElse();
  }
}

abstract class _HttpFailure extends Failure {
  const factory _HttpFailure(final HttpErrorType httpErrorType) =
      _$_HttpFailure;
  const _HttpFailure._() : super._();

  HttpErrorType get httpErrorType;
  @JsonKey(ignore: true)
  _$$_HttpFailureCopyWith<_$_HttpFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AuthFailureCopyWith<$Res> {
  factory _$$_AuthFailureCopyWith(
          _$_AuthFailure value, $Res Function(_$_AuthFailure) then) =
      __$$_AuthFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthErrorType authErrorType});
}

/// @nodoc
class __$$_AuthFailureCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$_AuthFailure>
    implements _$$_AuthFailureCopyWith<$Res> {
  __$$_AuthFailureCopyWithImpl(
      _$_AuthFailure _value, $Res Function(_$_AuthFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authErrorType = null,
  }) {
    return _then(_$_AuthFailure(
      null == authErrorType
          ? _value.authErrorType
          : authErrorType // ignore: cast_nullable_to_non_nullable
              as AuthErrorType,
    ));
  }
}

/// @nodoc

class _$_AuthFailure extends _AuthFailure {
  const _$_AuthFailure(this.authErrorType) : super._();

  @override
  final AuthErrorType authErrorType;

  @override
  String toString() {
    return 'Failure.authFailure(authErrorType: $authErrorType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthFailure &&
            (identical(other.authErrorType, authErrorType) ||
                other.authErrorType == authErrorType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authErrorType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthFailureCopyWith<_$_AuthFailure> get copyWith =>
      __$$_AuthFailureCopyWithImpl<_$_AuthFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HttpErrorType httpErrorType) httpFailure,
    required TResult Function(AuthErrorType authErrorType) authFailure,
    required TResult Function(String message) databaseFailure,
    required TResult Function() cacheFailure,
    required TResult Function() unKnownFailure,
  }) {
    return authFailure(authErrorType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HttpErrorType httpErrorType)? httpFailure,
    TResult? Function(AuthErrorType authErrorType)? authFailure,
    TResult? Function(String message)? databaseFailure,
    TResult? Function()? cacheFailure,
    TResult? Function()? unKnownFailure,
  }) {
    return authFailure?.call(authErrorType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HttpErrorType httpErrorType)? httpFailure,
    TResult Function(AuthErrorType authErrorType)? authFailure,
    TResult Function(String message)? databaseFailure,
    TResult Function()? cacheFailure,
    TResult Function()? unKnownFailure,
    required TResult orElse(),
  }) {
    if (authFailure != null) {
      return authFailure(authErrorType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HttpFailure value) httpFailure,
    required TResult Function(_AuthFailure value) authFailure,
    required TResult Function(_DatabaseFailure value) databaseFailure,
    required TResult Function(_CacheFailure value) cacheFailure,
    required TResult Function(_UnKnownFailure value) unKnownFailure,
  }) {
    return authFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HttpFailure value)? httpFailure,
    TResult? Function(_AuthFailure value)? authFailure,
    TResult? Function(_DatabaseFailure value)? databaseFailure,
    TResult? Function(_CacheFailure value)? cacheFailure,
    TResult? Function(_UnKnownFailure value)? unKnownFailure,
  }) {
    return authFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HttpFailure value)? httpFailure,
    TResult Function(_AuthFailure value)? authFailure,
    TResult Function(_DatabaseFailure value)? databaseFailure,
    TResult Function(_CacheFailure value)? cacheFailure,
    TResult Function(_UnKnownFailure value)? unKnownFailure,
    required TResult orElse(),
  }) {
    if (authFailure != null) {
      return authFailure(this);
    }
    return orElse();
  }
}

abstract class _AuthFailure extends Failure {
  const factory _AuthFailure(final AuthErrorType authErrorType) =
      _$_AuthFailure;
  const _AuthFailure._() : super._();

  AuthErrorType get authErrorType;
  @JsonKey(ignore: true)
  _$$_AuthFailureCopyWith<_$_AuthFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DatabaseFailureCopyWith<$Res> {
  factory _$$_DatabaseFailureCopyWith(
          _$_DatabaseFailure value, $Res Function(_$_DatabaseFailure) then) =
      __$$_DatabaseFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_DatabaseFailureCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$_DatabaseFailure>
    implements _$$_DatabaseFailureCopyWith<$Res> {
  __$$_DatabaseFailureCopyWithImpl(
      _$_DatabaseFailure _value, $Res Function(_$_DatabaseFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_DatabaseFailure(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DatabaseFailure extends _DatabaseFailure {
  const _$_DatabaseFailure(this.message) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.databaseFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DatabaseFailure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DatabaseFailureCopyWith<_$_DatabaseFailure> get copyWith =>
      __$$_DatabaseFailureCopyWithImpl<_$_DatabaseFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HttpErrorType httpErrorType) httpFailure,
    required TResult Function(AuthErrorType authErrorType) authFailure,
    required TResult Function(String message) databaseFailure,
    required TResult Function() cacheFailure,
    required TResult Function() unKnownFailure,
  }) {
    return databaseFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HttpErrorType httpErrorType)? httpFailure,
    TResult? Function(AuthErrorType authErrorType)? authFailure,
    TResult? Function(String message)? databaseFailure,
    TResult? Function()? cacheFailure,
    TResult? Function()? unKnownFailure,
  }) {
    return databaseFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HttpErrorType httpErrorType)? httpFailure,
    TResult Function(AuthErrorType authErrorType)? authFailure,
    TResult Function(String message)? databaseFailure,
    TResult Function()? cacheFailure,
    TResult Function()? unKnownFailure,
    required TResult orElse(),
  }) {
    if (databaseFailure != null) {
      return databaseFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HttpFailure value) httpFailure,
    required TResult Function(_AuthFailure value) authFailure,
    required TResult Function(_DatabaseFailure value) databaseFailure,
    required TResult Function(_CacheFailure value) cacheFailure,
    required TResult Function(_UnKnownFailure value) unKnownFailure,
  }) {
    return databaseFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HttpFailure value)? httpFailure,
    TResult? Function(_AuthFailure value)? authFailure,
    TResult? Function(_DatabaseFailure value)? databaseFailure,
    TResult? Function(_CacheFailure value)? cacheFailure,
    TResult? Function(_UnKnownFailure value)? unKnownFailure,
  }) {
    return databaseFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HttpFailure value)? httpFailure,
    TResult Function(_AuthFailure value)? authFailure,
    TResult Function(_DatabaseFailure value)? databaseFailure,
    TResult Function(_CacheFailure value)? cacheFailure,
    TResult Function(_UnKnownFailure value)? unKnownFailure,
    required TResult orElse(),
  }) {
    if (databaseFailure != null) {
      return databaseFailure(this);
    }
    return orElse();
  }
}

abstract class _DatabaseFailure extends Failure {
  const factory _DatabaseFailure(final String message) = _$_DatabaseFailure;
  const _DatabaseFailure._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$_DatabaseFailureCopyWith<_$_DatabaseFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CacheFailureCopyWith<$Res> {
  factory _$$_CacheFailureCopyWith(
          _$_CacheFailure value, $Res Function(_$_CacheFailure) then) =
      __$$_CacheFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CacheFailureCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$_CacheFailure>
    implements _$$_CacheFailureCopyWith<$Res> {
  __$$_CacheFailureCopyWithImpl(
      _$_CacheFailure _value, $Res Function(_$_CacheFailure) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CacheFailure extends _CacheFailure {
  const _$_CacheFailure() : super._();

  @override
  String toString() {
    return 'Failure.cacheFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CacheFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HttpErrorType httpErrorType) httpFailure,
    required TResult Function(AuthErrorType authErrorType) authFailure,
    required TResult Function(String message) databaseFailure,
    required TResult Function() cacheFailure,
    required TResult Function() unKnownFailure,
  }) {
    return cacheFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HttpErrorType httpErrorType)? httpFailure,
    TResult? Function(AuthErrorType authErrorType)? authFailure,
    TResult? Function(String message)? databaseFailure,
    TResult? Function()? cacheFailure,
    TResult? Function()? unKnownFailure,
  }) {
    return cacheFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HttpErrorType httpErrorType)? httpFailure,
    TResult Function(AuthErrorType authErrorType)? authFailure,
    TResult Function(String message)? databaseFailure,
    TResult Function()? cacheFailure,
    TResult Function()? unKnownFailure,
    required TResult orElse(),
  }) {
    if (cacheFailure != null) {
      return cacheFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HttpFailure value) httpFailure,
    required TResult Function(_AuthFailure value) authFailure,
    required TResult Function(_DatabaseFailure value) databaseFailure,
    required TResult Function(_CacheFailure value) cacheFailure,
    required TResult Function(_UnKnownFailure value) unKnownFailure,
  }) {
    return cacheFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HttpFailure value)? httpFailure,
    TResult? Function(_AuthFailure value)? authFailure,
    TResult? Function(_DatabaseFailure value)? databaseFailure,
    TResult? Function(_CacheFailure value)? cacheFailure,
    TResult? Function(_UnKnownFailure value)? unKnownFailure,
  }) {
    return cacheFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HttpFailure value)? httpFailure,
    TResult Function(_AuthFailure value)? authFailure,
    TResult Function(_DatabaseFailure value)? databaseFailure,
    TResult Function(_CacheFailure value)? cacheFailure,
    TResult Function(_UnKnownFailure value)? unKnownFailure,
    required TResult orElse(),
  }) {
    if (cacheFailure != null) {
      return cacheFailure(this);
    }
    return orElse();
  }
}

abstract class _CacheFailure extends Failure {
  const factory _CacheFailure() = _$_CacheFailure;
  const _CacheFailure._() : super._();
}

/// @nodoc
abstract class _$$_UnKnownFailureCopyWith<$Res> {
  factory _$$_UnKnownFailureCopyWith(
          _$_UnKnownFailure value, $Res Function(_$_UnKnownFailure) then) =
      __$$_UnKnownFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UnKnownFailureCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$_UnKnownFailure>
    implements _$$_UnKnownFailureCopyWith<$Res> {
  __$$_UnKnownFailureCopyWithImpl(
      _$_UnKnownFailure _value, $Res Function(_$_UnKnownFailure) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UnKnownFailure extends _UnKnownFailure {
  const _$_UnKnownFailure() : super._();

  @override
  String toString() {
    return 'Failure.unKnownFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UnKnownFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HttpErrorType httpErrorType) httpFailure,
    required TResult Function(AuthErrorType authErrorType) authFailure,
    required TResult Function(String message) databaseFailure,
    required TResult Function() cacheFailure,
    required TResult Function() unKnownFailure,
  }) {
    return unKnownFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HttpErrorType httpErrorType)? httpFailure,
    TResult? Function(AuthErrorType authErrorType)? authFailure,
    TResult? Function(String message)? databaseFailure,
    TResult? Function()? cacheFailure,
    TResult? Function()? unKnownFailure,
  }) {
    return unKnownFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HttpErrorType httpErrorType)? httpFailure,
    TResult Function(AuthErrorType authErrorType)? authFailure,
    TResult Function(String message)? databaseFailure,
    TResult Function()? cacheFailure,
    TResult Function()? unKnownFailure,
    required TResult orElse(),
  }) {
    if (unKnownFailure != null) {
      return unKnownFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HttpFailure value) httpFailure,
    required TResult Function(_AuthFailure value) authFailure,
    required TResult Function(_DatabaseFailure value) databaseFailure,
    required TResult Function(_CacheFailure value) cacheFailure,
    required TResult Function(_UnKnownFailure value) unKnownFailure,
  }) {
    return unKnownFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HttpFailure value)? httpFailure,
    TResult? Function(_AuthFailure value)? authFailure,
    TResult? Function(_DatabaseFailure value)? databaseFailure,
    TResult? Function(_CacheFailure value)? cacheFailure,
    TResult? Function(_UnKnownFailure value)? unKnownFailure,
  }) {
    return unKnownFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HttpFailure value)? httpFailure,
    TResult Function(_AuthFailure value)? authFailure,
    TResult Function(_DatabaseFailure value)? databaseFailure,
    TResult Function(_CacheFailure value)? cacheFailure,
    TResult Function(_UnKnownFailure value)? unKnownFailure,
    required TResult orElse(),
  }) {
    if (unKnownFailure != null) {
      return unKnownFailure(this);
    }
    return orElse();
  }
}

abstract class _UnKnownFailure extends Failure {
  const factory _UnKnownFailure() = _$_UnKnownFailure;
  const _UnKnownFailure._() : super._();
}
