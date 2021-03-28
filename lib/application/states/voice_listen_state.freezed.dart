// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'voice_listen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$VoiceListenStateTearOff {
  const _$VoiceListenStateTearOff();

// ignore: unused_element
  Idle call() {
    return const Idle();
  }

// ignore: unused_element
  ListeningInitializing initializing() {
    return const ListeningInitializing();
  }

// ignore: unused_element
  ListeningInitialized initialized() {
    return const ListeningInitialized();
  }

// ignore: unused_element
  Listening listening() {
    return const Listening();
  }

// ignore: unused_element
  Recognized recognized({@required String recognizedWords}) {
    return Recognized(
      recognizedWords: recognizedWords,
    );
  }

// ignore: unused_element
  ListeningComplete complete() {
    return const ListeningComplete();
  }

// ignore: unused_element
  ListeningError error({String message}) {
    return ListeningError(
      message: message,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $VoiceListenState = _$VoiceListenStateTearOff();

/// @nodoc
mixin _$VoiceListenState {
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(), {
    @required TResult initializing(),
    @required TResult initialized(),
    @required TResult listening(),
    @required TResult recognized(String recognizedWords),
    @required TResult complete(),
    @required TResult error(String message),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(), {
    TResult initializing(),
    TResult initialized(),
    TResult listening(),
    TResult recognized(String recognizedWords),
    TResult complete(),
    TResult error(String message),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(Idle value), {
    @required TResult initializing(ListeningInitializing value),
    @required TResult initialized(ListeningInitialized value),
    @required TResult listening(Listening value),
    @required TResult recognized(Recognized value),
    @required TResult complete(ListeningComplete value),
    @required TResult error(ListeningError value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(Idle value), {
    TResult initializing(ListeningInitializing value),
    TResult initialized(ListeningInitialized value),
    TResult listening(Listening value),
    TResult recognized(Recognized value),
    TResult complete(ListeningComplete value),
    TResult error(ListeningError value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $VoiceListenStateCopyWith<$Res> {
  factory $VoiceListenStateCopyWith(
          VoiceListenState value, $Res Function(VoiceListenState) then) =
      _$VoiceListenStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$VoiceListenStateCopyWithImpl<$Res>
    implements $VoiceListenStateCopyWith<$Res> {
  _$VoiceListenStateCopyWithImpl(this._value, this._then);

  final VoiceListenState _value;
  // ignore: unused_field
  final $Res Function(VoiceListenState) _then;
}

/// @nodoc
abstract class $IdleCopyWith<$Res> {
  factory $IdleCopyWith(Idle value, $Res Function(Idle) then) =
      _$IdleCopyWithImpl<$Res>;
}

/// @nodoc
class _$IdleCopyWithImpl<$Res> extends _$VoiceListenStateCopyWithImpl<$Res>
    implements $IdleCopyWith<$Res> {
  _$IdleCopyWithImpl(Idle _value, $Res Function(Idle) _then)
      : super(_value, (v) => _then(v as Idle));

  @override
  Idle get _value => super._value as Idle;
}

/// @nodoc
class _$Idle implements Idle {
  const _$Idle();

  @override
  String toString() {
    return 'VoiceListenState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Idle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(), {
    @required TResult initializing(),
    @required TResult initialized(),
    @required TResult listening(),
    @required TResult recognized(String recognizedWords),
    @required TResult complete(),
    @required TResult error(String message),
  }) {
    assert($default != null);
    assert(initializing != null);
    assert(initialized != null);
    assert(listening != null);
    assert(recognized != null);
    assert(complete != null);
    assert(error != null);
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(), {
    TResult initializing(),
    TResult initialized(),
    TResult listening(),
    TResult recognized(String recognizedWords),
    TResult complete(),
    TResult error(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(Idle value), {
    @required TResult initializing(ListeningInitializing value),
    @required TResult initialized(ListeningInitialized value),
    @required TResult listening(Listening value),
    @required TResult recognized(Recognized value),
    @required TResult complete(ListeningComplete value),
    @required TResult error(ListeningError value),
  }) {
    assert($default != null);
    assert(initializing != null);
    assert(initialized != null);
    assert(listening != null);
    assert(recognized != null);
    assert(complete != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(Idle value), {
    TResult initializing(ListeningInitializing value),
    TResult initialized(ListeningInitialized value),
    TResult listening(Listening value),
    TResult recognized(Recognized value),
    TResult complete(ListeningComplete value),
    TResult error(ListeningError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class Idle implements VoiceListenState {
  const factory Idle() = _$Idle;
}

/// @nodoc
abstract class $ListeningInitializingCopyWith<$Res> {
  factory $ListeningInitializingCopyWith(ListeningInitializing value,
          $Res Function(ListeningInitializing) then) =
      _$ListeningInitializingCopyWithImpl<$Res>;
}

/// @nodoc
class _$ListeningInitializingCopyWithImpl<$Res>
    extends _$VoiceListenStateCopyWithImpl<$Res>
    implements $ListeningInitializingCopyWith<$Res> {
  _$ListeningInitializingCopyWithImpl(
      ListeningInitializing _value, $Res Function(ListeningInitializing) _then)
      : super(_value, (v) => _then(v as ListeningInitializing));

  @override
  ListeningInitializing get _value => super._value as ListeningInitializing;
}

/// @nodoc
class _$ListeningInitializing implements ListeningInitializing {
  const _$ListeningInitializing();

  @override
  String toString() {
    return 'VoiceListenState.initializing()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ListeningInitializing);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(), {
    @required TResult initializing(),
    @required TResult initialized(),
    @required TResult listening(),
    @required TResult recognized(String recognizedWords),
    @required TResult complete(),
    @required TResult error(String message),
  }) {
    assert($default != null);
    assert(initializing != null);
    assert(initialized != null);
    assert(listening != null);
    assert(recognized != null);
    assert(complete != null);
    assert(error != null);
    return initializing();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(), {
    TResult initializing(),
    TResult initialized(),
    TResult listening(),
    TResult recognized(String recognizedWords),
    TResult complete(),
    TResult error(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initializing != null) {
      return initializing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(Idle value), {
    @required TResult initializing(ListeningInitializing value),
    @required TResult initialized(ListeningInitialized value),
    @required TResult listening(Listening value),
    @required TResult recognized(Recognized value),
    @required TResult complete(ListeningComplete value),
    @required TResult error(ListeningError value),
  }) {
    assert($default != null);
    assert(initializing != null);
    assert(initialized != null);
    assert(listening != null);
    assert(recognized != null);
    assert(complete != null);
    assert(error != null);
    return initializing(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(Idle value), {
    TResult initializing(ListeningInitializing value),
    TResult initialized(ListeningInitialized value),
    TResult listening(Listening value),
    TResult recognized(Recognized value),
    TResult complete(ListeningComplete value),
    TResult error(ListeningError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initializing != null) {
      return initializing(this);
    }
    return orElse();
  }
}

abstract class ListeningInitializing implements VoiceListenState {
  const factory ListeningInitializing() = _$ListeningInitializing;
}

/// @nodoc
abstract class $ListeningInitializedCopyWith<$Res> {
  factory $ListeningInitializedCopyWith(ListeningInitialized value,
          $Res Function(ListeningInitialized) then) =
      _$ListeningInitializedCopyWithImpl<$Res>;
}

/// @nodoc
class _$ListeningInitializedCopyWithImpl<$Res>
    extends _$VoiceListenStateCopyWithImpl<$Res>
    implements $ListeningInitializedCopyWith<$Res> {
  _$ListeningInitializedCopyWithImpl(
      ListeningInitialized _value, $Res Function(ListeningInitialized) _then)
      : super(_value, (v) => _then(v as ListeningInitialized));

  @override
  ListeningInitialized get _value => super._value as ListeningInitialized;
}

/// @nodoc
class _$ListeningInitialized implements ListeningInitialized {
  const _$ListeningInitialized();

  @override
  String toString() {
    return 'VoiceListenState.initialized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ListeningInitialized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(), {
    @required TResult initializing(),
    @required TResult initialized(),
    @required TResult listening(),
    @required TResult recognized(String recognizedWords),
    @required TResult complete(),
    @required TResult error(String message),
  }) {
    assert($default != null);
    assert(initializing != null);
    assert(initialized != null);
    assert(listening != null);
    assert(recognized != null);
    assert(complete != null);
    assert(error != null);
    return initialized();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(), {
    TResult initializing(),
    TResult initialized(),
    TResult listening(),
    TResult recognized(String recognizedWords),
    TResult complete(),
    TResult error(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(Idle value), {
    @required TResult initializing(ListeningInitializing value),
    @required TResult initialized(ListeningInitialized value),
    @required TResult listening(Listening value),
    @required TResult recognized(Recognized value),
    @required TResult complete(ListeningComplete value),
    @required TResult error(ListeningError value),
  }) {
    assert($default != null);
    assert(initializing != null);
    assert(initialized != null);
    assert(listening != null);
    assert(recognized != null);
    assert(complete != null);
    assert(error != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(Idle value), {
    TResult initializing(ListeningInitializing value),
    TResult initialized(ListeningInitialized value),
    TResult listening(Listening value),
    TResult recognized(Recognized value),
    TResult complete(ListeningComplete value),
    TResult error(ListeningError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class ListeningInitialized implements VoiceListenState {
  const factory ListeningInitialized() = _$ListeningInitialized;
}

/// @nodoc
abstract class $ListeningCopyWith<$Res> {
  factory $ListeningCopyWith(Listening value, $Res Function(Listening) then) =
      _$ListeningCopyWithImpl<$Res>;
}

/// @nodoc
class _$ListeningCopyWithImpl<$Res> extends _$VoiceListenStateCopyWithImpl<$Res>
    implements $ListeningCopyWith<$Res> {
  _$ListeningCopyWithImpl(Listening _value, $Res Function(Listening) _then)
      : super(_value, (v) => _then(v as Listening));

  @override
  Listening get _value => super._value as Listening;
}

/// @nodoc
class _$Listening implements Listening {
  const _$Listening();

  @override
  String toString() {
    return 'VoiceListenState.listening()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Listening);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(), {
    @required TResult initializing(),
    @required TResult initialized(),
    @required TResult listening(),
    @required TResult recognized(String recognizedWords),
    @required TResult complete(),
    @required TResult error(String message),
  }) {
    assert($default != null);
    assert(initializing != null);
    assert(initialized != null);
    assert(listening != null);
    assert(recognized != null);
    assert(complete != null);
    assert(error != null);
    return listening();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(), {
    TResult initializing(),
    TResult initialized(),
    TResult listening(),
    TResult recognized(String recognizedWords),
    TResult complete(),
    TResult error(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (listening != null) {
      return listening();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(Idle value), {
    @required TResult initializing(ListeningInitializing value),
    @required TResult initialized(ListeningInitialized value),
    @required TResult listening(Listening value),
    @required TResult recognized(Recognized value),
    @required TResult complete(ListeningComplete value),
    @required TResult error(ListeningError value),
  }) {
    assert($default != null);
    assert(initializing != null);
    assert(initialized != null);
    assert(listening != null);
    assert(recognized != null);
    assert(complete != null);
    assert(error != null);
    return listening(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(Idle value), {
    TResult initializing(ListeningInitializing value),
    TResult initialized(ListeningInitialized value),
    TResult listening(Listening value),
    TResult recognized(Recognized value),
    TResult complete(ListeningComplete value),
    TResult error(ListeningError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (listening != null) {
      return listening(this);
    }
    return orElse();
  }
}

abstract class Listening implements VoiceListenState {
  const factory Listening() = _$Listening;
}

/// @nodoc
abstract class $RecognizedCopyWith<$Res> {
  factory $RecognizedCopyWith(
          Recognized value, $Res Function(Recognized) then) =
      _$RecognizedCopyWithImpl<$Res>;
  $Res call({String recognizedWords});
}

/// @nodoc
class _$RecognizedCopyWithImpl<$Res>
    extends _$VoiceListenStateCopyWithImpl<$Res>
    implements $RecognizedCopyWith<$Res> {
  _$RecognizedCopyWithImpl(Recognized _value, $Res Function(Recognized) _then)
      : super(_value, (v) => _then(v as Recognized));

  @override
  Recognized get _value => super._value as Recognized;

  @override
  $Res call({
    Object recognizedWords = freezed,
  }) {
    return _then(Recognized(
      recognizedWords: recognizedWords == freezed
          ? _value.recognizedWords
          : recognizedWords as String,
    ));
  }
}

/// @nodoc
class _$Recognized implements Recognized {
  const _$Recognized({@required this.recognizedWords})
      : assert(recognizedWords != null);

  @override
  final String recognizedWords;

  @override
  String toString() {
    return 'VoiceListenState.recognized(recognizedWords: $recognizedWords)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Recognized &&
            (identical(other.recognizedWords, recognizedWords) ||
                const DeepCollectionEquality()
                    .equals(other.recognizedWords, recognizedWords)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(recognizedWords);

  @JsonKey(ignore: true)
  @override
  $RecognizedCopyWith<Recognized> get copyWith =>
      _$RecognizedCopyWithImpl<Recognized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(), {
    @required TResult initializing(),
    @required TResult initialized(),
    @required TResult listening(),
    @required TResult recognized(String recognizedWords),
    @required TResult complete(),
    @required TResult error(String message),
  }) {
    assert($default != null);
    assert(initializing != null);
    assert(initialized != null);
    assert(listening != null);
    assert(recognized != null);
    assert(complete != null);
    assert(error != null);
    return recognized(recognizedWords);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(), {
    TResult initializing(),
    TResult initialized(),
    TResult listening(),
    TResult recognized(String recognizedWords),
    TResult complete(),
    TResult error(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (recognized != null) {
      return recognized(recognizedWords);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(Idle value), {
    @required TResult initializing(ListeningInitializing value),
    @required TResult initialized(ListeningInitialized value),
    @required TResult listening(Listening value),
    @required TResult recognized(Recognized value),
    @required TResult complete(ListeningComplete value),
    @required TResult error(ListeningError value),
  }) {
    assert($default != null);
    assert(initializing != null);
    assert(initialized != null);
    assert(listening != null);
    assert(recognized != null);
    assert(complete != null);
    assert(error != null);
    return recognized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(Idle value), {
    TResult initializing(ListeningInitializing value),
    TResult initialized(ListeningInitialized value),
    TResult listening(Listening value),
    TResult recognized(Recognized value),
    TResult complete(ListeningComplete value),
    TResult error(ListeningError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (recognized != null) {
      return recognized(this);
    }
    return orElse();
  }
}

abstract class Recognized implements VoiceListenState {
  const factory Recognized({@required String recognizedWords}) = _$Recognized;

  String get recognizedWords;
  @JsonKey(ignore: true)
  $RecognizedCopyWith<Recognized> get copyWith;
}

/// @nodoc
abstract class $ListeningCompleteCopyWith<$Res> {
  factory $ListeningCompleteCopyWith(
          ListeningComplete value, $Res Function(ListeningComplete) then) =
      _$ListeningCompleteCopyWithImpl<$Res>;
}

/// @nodoc
class _$ListeningCompleteCopyWithImpl<$Res>
    extends _$VoiceListenStateCopyWithImpl<$Res>
    implements $ListeningCompleteCopyWith<$Res> {
  _$ListeningCompleteCopyWithImpl(
      ListeningComplete _value, $Res Function(ListeningComplete) _then)
      : super(_value, (v) => _then(v as ListeningComplete));

  @override
  ListeningComplete get _value => super._value as ListeningComplete;
}

/// @nodoc
class _$ListeningComplete implements ListeningComplete {
  const _$ListeningComplete();

  @override
  String toString() {
    return 'VoiceListenState.complete()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ListeningComplete);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(), {
    @required TResult initializing(),
    @required TResult initialized(),
    @required TResult listening(),
    @required TResult recognized(String recognizedWords),
    @required TResult complete(),
    @required TResult error(String message),
  }) {
    assert($default != null);
    assert(initializing != null);
    assert(initialized != null);
    assert(listening != null);
    assert(recognized != null);
    assert(complete != null);
    assert(error != null);
    return complete();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(), {
    TResult initializing(),
    TResult initialized(),
    TResult listening(),
    TResult recognized(String recognizedWords),
    TResult complete(),
    TResult error(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (complete != null) {
      return complete();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(Idle value), {
    @required TResult initializing(ListeningInitializing value),
    @required TResult initialized(ListeningInitialized value),
    @required TResult listening(Listening value),
    @required TResult recognized(Recognized value),
    @required TResult complete(ListeningComplete value),
    @required TResult error(ListeningError value),
  }) {
    assert($default != null);
    assert(initializing != null);
    assert(initialized != null);
    assert(listening != null);
    assert(recognized != null);
    assert(complete != null);
    assert(error != null);
    return complete(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(Idle value), {
    TResult initializing(ListeningInitializing value),
    TResult initialized(ListeningInitialized value),
    TResult listening(Listening value),
    TResult recognized(Recognized value),
    TResult complete(ListeningComplete value),
    TResult error(ListeningError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (complete != null) {
      return complete(this);
    }
    return orElse();
  }
}

abstract class ListeningComplete implements VoiceListenState {
  const factory ListeningComplete() = _$ListeningComplete;
}

/// @nodoc
abstract class $ListeningErrorCopyWith<$Res> {
  factory $ListeningErrorCopyWith(
          ListeningError value, $Res Function(ListeningError) then) =
      _$ListeningErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$ListeningErrorCopyWithImpl<$Res>
    extends _$VoiceListenStateCopyWithImpl<$Res>
    implements $ListeningErrorCopyWith<$Res> {
  _$ListeningErrorCopyWithImpl(
      ListeningError _value, $Res Function(ListeningError) _then)
      : super(_value, (v) => _then(v as ListeningError));

  @override
  ListeningError get _value => super._value as ListeningError;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(ListeningError(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$ListeningError implements ListeningError {
  const _$ListeningError({this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'VoiceListenState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ListeningError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $ListeningErrorCopyWith<ListeningError> get copyWith =>
      _$ListeningErrorCopyWithImpl<ListeningError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(), {
    @required TResult initializing(),
    @required TResult initialized(),
    @required TResult listening(),
    @required TResult recognized(String recognizedWords),
    @required TResult complete(),
    @required TResult error(String message),
  }) {
    assert($default != null);
    assert(initializing != null);
    assert(initialized != null);
    assert(listening != null);
    assert(recognized != null);
    assert(complete != null);
    assert(error != null);
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(), {
    TResult initializing(),
    TResult initialized(),
    TResult listening(),
    TResult recognized(String recognizedWords),
    TResult complete(),
    TResult error(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(Idle value), {
    @required TResult initializing(ListeningInitializing value),
    @required TResult initialized(ListeningInitialized value),
    @required TResult listening(Listening value),
    @required TResult recognized(Recognized value),
    @required TResult complete(ListeningComplete value),
    @required TResult error(ListeningError value),
  }) {
    assert($default != null);
    assert(initializing != null);
    assert(initialized != null);
    assert(listening != null);
    assert(recognized != null);
    assert(complete != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(Idle value), {
    TResult initializing(ListeningInitializing value),
    TResult initialized(ListeningInitialized value),
    TResult listening(Listening value),
    TResult recognized(Recognized value),
    TResult complete(ListeningComplete value),
    TResult error(ListeningError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ListeningError implements VoiceListenState {
  const factory ListeningError({String message}) = _$ListeningError;

  String get message;
  @JsonKey(ignore: true)
  $ListeningErrorCopyWith<ListeningError> get copyWith;
}
