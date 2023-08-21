// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'future_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FutureState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(String error) error,
    required TResult Function() loading,
    required TResult Function() init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? success,
    TResult? Function(String error)? error,
    TResult? Function()? loading,
    TResult? Function()? init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(String error)? error,
    TResult Function()? loading,
    TResult Function()? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SuccessState<T> value) success,
    required TResult Function(ErrorState<T> value) error,
    required TResult Function(LoadingState<T> value) loading,
    required TResult Function(InitState<T> value) init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SuccessState<T> value)? success,
    TResult? Function(ErrorState<T> value)? error,
    TResult? Function(LoadingState<T> value)? loading,
    TResult? Function(InitState<T> value)? init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SuccessState<T> value)? success,
    TResult Function(ErrorState<T> value)? error,
    TResult Function(LoadingState<T> value)? loading,
    TResult Function(InitState<T> value)? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FutureStateCopyWith<T, $Res> {
  factory $FutureStateCopyWith(
          FutureState<T> value, $Res Function(FutureState<T>) then) =
      _$FutureStateCopyWithImpl<T, $Res, FutureState<T>>;
}

/// @nodoc
class _$FutureStateCopyWithImpl<T, $Res, $Val extends FutureState<T>>
    implements $FutureStateCopyWith<T, $Res> {
  _$FutureStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SuccessStateCopyWith<T, $Res> {
  factory _$$SuccessStateCopyWith(
          _$SuccessState<T> value, $Res Function(_$SuccessState<T>) then) =
      __$$SuccessStateCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$SuccessStateCopyWithImpl<T, $Res>
    extends _$FutureStateCopyWithImpl<T, $Res, _$SuccessState<T>>
    implements _$$SuccessStateCopyWith<T, $Res> {
  __$$SuccessStateCopyWithImpl(
      _$SuccessState<T> _value, $Res Function(_$SuccessState<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SuccessState<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$SuccessState<T> implements SuccessState<T> {
  const _$SuccessState(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'FutureState<$T>.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessState<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessStateCopyWith<T, _$SuccessState<T>> get copyWith =>
      __$$SuccessStateCopyWithImpl<T, _$SuccessState<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(String error) error,
    required TResult Function() loading,
    required TResult Function() init,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? success,
    TResult? Function(String error)? error,
    TResult? Function()? loading,
    TResult? Function()? init,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(String error)? error,
    TResult Function()? loading,
    TResult Function()? init,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SuccessState<T> value) success,
    required TResult Function(ErrorState<T> value) error,
    required TResult Function(LoadingState<T> value) loading,
    required TResult Function(InitState<T> value) init,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SuccessState<T> value)? success,
    TResult? Function(ErrorState<T> value)? error,
    TResult? Function(LoadingState<T> value)? loading,
    TResult? Function(InitState<T> value)? init,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SuccessState<T> value)? success,
    TResult Function(ErrorState<T> value)? error,
    TResult Function(LoadingState<T> value)? loading,
    TResult Function(InitState<T> value)? init,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SuccessState<T> implements FutureState<T> {
  const factory SuccessState(final T data) = _$SuccessState<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$SuccessStateCopyWith<T, _$SuccessState<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorStateCopyWith<T, $Res> {
  factory _$$ErrorStateCopyWith(
          _$ErrorState<T> value, $Res Function(_$ErrorState<T>) then) =
      __$$ErrorStateCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ErrorStateCopyWithImpl<T, $Res>
    extends _$FutureStateCopyWithImpl<T, $Res, _$ErrorState<T>>
    implements _$$ErrorStateCopyWith<T, $Res> {
  __$$ErrorStateCopyWithImpl(
      _$ErrorState<T> _value, $Res Function(_$ErrorState<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorState<T>(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorState<T> implements ErrorState<T> {
  const _$ErrorState(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'FutureState<$T>.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorState<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorStateCopyWith<T, _$ErrorState<T>> get copyWith =>
      __$$ErrorStateCopyWithImpl<T, _$ErrorState<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(String error) error,
    required TResult Function() loading,
    required TResult Function() init,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? success,
    TResult? Function(String error)? error,
    TResult? Function()? loading,
    TResult? Function()? init,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(String error)? error,
    TResult Function()? loading,
    TResult Function()? init,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SuccessState<T> value) success,
    required TResult Function(ErrorState<T> value) error,
    required TResult Function(LoadingState<T> value) loading,
    required TResult Function(InitState<T> value) init,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SuccessState<T> value)? success,
    TResult? Function(ErrorState<T> value)? error,
    TResult? Function(LoadingState<T> value)? loading,
    TResult? Function(InitState<T> value)? init,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SuccessState<T> value)? success,
    TResult Function(ErrorState<T> value)? error,
    TResult Function(LoadingState<T> value)? loading,
    TResult Function(InitState<T> value)? init,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorState<T> implements FutureState<T> {
  const factory ErrorState(final String error) = _$ErrorState<T>;

  String get error;
  @JsonKey(ignore: true)
  _$$ErrorStateCopyWith<T, _$ErrorState<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingStateCopyWith<T, $Res> {
  factory _$$LoadingStateCopyWith(
          _$LoadingState<T> value, $Res Function(_$LoadingState<T>) then) =
      __$$LoadingStateCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$LoadingStateCopyWithImpl<T, $Res>
    extends _$FutureStateCopyWithImpl<T, $Res, _$LoadingState<T>>
    implements _$$LoadingStateCopyWith<T, $Res> {
  __$$LoadingStateCopyWithImpl(
      _$LoadingState<T> _value, $Res Function(_$LoadingState<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingState<T> implements LoadingState<T> {
  const _$LoadingState();

  @override
  String toString() {
    return 'FutureState<$T>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingState<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(String error) error,
    required TResult Function() loading,
    required TResult Function() init,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? success,
    TResult? Function(String error)? error,
    TResult? Function()? loading,
    TResult? Function()? init,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(String error)? error,
    TResult Function()? loading,
    TResult Function()? init,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SuccessState<T> value) success,
    required TResult Function(ErrorState<T> value) error,
    required TResult Function(LoadingState<T> value) loading,
    required TResult Function(InitState<T> value) init,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SuccessState<T> value)? success,
    TResult? Function(ErrorState<T> value)? error,
    TResult? Function(LoadingState<T> value)? loading,
    TResult? Function(InitState<T> value)? init,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SuccessState<T> value)? success,
    TResult Function(ErrorState<T> value)? error,
    TResult Function(LoadingState<T> value)? loading,
    TResult Function(InitState<T> value)? init,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingState<T> implements FutureState<T> {
  const factory LoadingState() = _$LoadingState<T>;
}

/// @nodoc
abstract class _$$InitStateCopyWith<T, $Res> {
  factory _$$InitStateCopyWith(
          _$InitState<T> value, $Res Function(_$InitState<T>) then) =
      __$$InitStateCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InitStateCopyWithImpl<T, $Res>
    extends _$FutureStateCopyWithImpl<T, $Res, _$InitState<T>>
    implements _$$InitStateCopyWith<T, $Res> {
  __$$InitStateCopyWithImpl(
      _$InitState<T> _value, $Res Function(_$InitState<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitState<T> implements InitState<T> {
  const _$InitState();

  @override
  String toString() {
    return 'FutureState<$T>.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitState<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(String error) error,
    required TResult Function() loading,
    required TResult Function() init,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? success,
    TResult? Function(String error)? error,
    TResult? Function()? loading,
    TResult? Function()? init,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(String error)? error,
    TResult Function()? loading,
    TResult Function()? init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SuccessState<T> value) success,
    required TResult Function(ErrorState<T> value) error,
    required TResult Function(LoadingState<T> value) loading,
    required TResult Function(InitState<T> value) init,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SuccessState<T> value)? success,
    TResult? Function(ErrorState<T> value)? error,
    TResult? Function(LoadingState<T> value)? loading,
    TResult? Function(InitState<T> value)? init,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SuccessState<T> value)? success,
    TResult Function(ErrorState<T> value)? error,
    TResult Function(LoadingState<T> value)? loading,
    TResult Function(InitState<T> value)? init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitState<T> implements FutureState<T> {
  const factory InitState() = _$InitState<T>;
}
