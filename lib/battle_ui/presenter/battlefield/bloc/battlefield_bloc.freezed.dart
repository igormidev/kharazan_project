// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'battlefield_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BattlefieldEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pieceSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pieceSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pieceSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BattlefieldPieceSelected value) pieceSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BattlefieldPieceSelected value)? pieceSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BattlefieldPieceSelected value)? pieceSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BattlefieldEventCopyWith<$Res> {
  factory $BattlefieldEventCopyWith(
          BattlefieldEvent value, $Res Function(BattlefieldEvent) then) =
      _$BattlefieldEventCopyWithImpl<$Res, BattlefieldEvent>;
}

/// @nodoc
class _$BattlefieldEventCopyWithImpl<$Res, $Val extends BattlefieldEvent>
    implements $BattlefieldEventCopyWith<$Res> {
  _$BattlefieldEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_BattlefieldPieceSelectedCopyWith<$Res> {
  factory _$$_BattlefieldPieceSelectedCopyWith(
          _$_BattlefieldPieceSelected value,
          $Res Function(_$_BattlefieldPieceSelected) then) =
      __$$_BattlefieldPieceSelectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_BattlefieldPieceSelectedCopyWithImpl<$Res>
    extends _$BattlefieldEventCopyWithImpl<$Res, _$_BattlefieldPieceSelected>
    implements _$$_BattlefieldPieceSelectedCopyWith<$Res> {
  __$$_BattlefieldPieceSelectedCopyWithImpl(_$_BattlefieldPieceSelected _value,
      $Res Function(_$_BattlefieldPieceSelected) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_BattlefieldPieceSelected implements _BattlefieldPieceSelected {
  const _$_BattlefieldPieceSelected();

  @override
  String toString() {
    return 'BattlefieldEvent.pieceSelected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BattlefieldPieceSelected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pieceSelected,
  }) {
    return pieceSelected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pieceSelected,
  }) {
    return pieceSelected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pieceSelected,
    required TResult orElse(),
  }) {
    if (pieceSelected != null) {
      return pieceSelected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BattlefieldPieceSelected value) pieceSelected,
  }) {
    return pieceSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BattlefieldPieceSelected value)? pieceSelected,
  }) {
    return pieceSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BattlefieldPieceSelected value)? pieceSelected,
    required TResult orElse(),
  }) {
    if (pieceSelected != null) {
      return pieceSelected(this);
    }
    return orElse();
  }
}

abstract class _BattlefieldPieceSelected implements BattlefieldEvent {
  const factory _BattlefieldPieceSelected() = _$_BattlefieldPieceSelected;
}

/// @nodoc
mixin _$BattlefieldState {
  List<PieceEntity> get pieces => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<PieceEntity> pieces) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PieceEntity> pieces)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PieceEntity> pieces)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BattlefieldInitialState value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BattlefieldInitialState value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BattlefieldInitialState value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BattlefieldStateCopyWith<BattlefieldState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BattlefieldStateCopyWith<$Res> {
  factory $BattlefieldStateCopyWith(
          BattlefieldState value, $Res Function(BattlefieldState) then) =
      _$BattlefieldStateCopyWithImpl<$Res, BattlefieldState>;
  @useResult
  $Res call({List<PieceEntity> pieces});
}

/// @nodoc
class _$BattlefieldStateCopyWithImpl<$Res, $Val extends BattlefieldState>
    implements $BattlefieldStateCopyWith<$Res> {
  _$BattlefieldStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pieces = null,
  }) {
    return _then(_value.copyWith(
      pieces: null == pieces
          ? _value.pieces
          : pieces // ignore: cast_nullable_to_non_nullable
              as List<PieceEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BattlefieldInitialStateCopyWith<$Res>
    implements $BattlefieldStateCopyWith<$Res> {
  factory _$$_BattlefieldInitialStateCopyWith(_$_BattlefieldInitialState value,
          $Res Function(_$_BattlefieldInitialState) then) =
      __$$_BattlefieldInitialStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PieceEntity> pieces});
}

/// @nodoc
class __$$_BattlefieldInitialStateCopyWithImpl<$Res>
    extends _$BattlefieldStateCopyWithImpl<$Res, _$_BattlefieldInitialState>
    implements _$$_BattlefieldInitialStateCopyWith<$Res> {
  __$$_BattlefieldInitialStateCopyWithImpl(_$_BattlefieldInitialState _value,
      $Res Function(_$_BattlefieldInitialState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pieces = null,
  }) {
    return _then(_$_BattlefieldInitialState(
      null == pieces
          ? _value._pieces
          : pieces // ignore: cast_nullable_to_non_nullable
              as List<PieceEntity>,
    ));
  }
}

/// @nodoc

class _$_BattlefieldInitialState implements _BattlefieldInitialState {
  const _$_BattlefieldInitialState(final List<PieceEntity> pieces)
      : _pieces = pieces;

  final List<PieceEntity> _pieces;
  @override
  List<PieceEntity> get pieces {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pieces);
  }

  @override
  String toString() {
    return 'BattlefieldState.initial(pieces: $pieces)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BattlefieldInitialState &&
            const DeepCollectionEquality().equals(other._pieces, _pieces));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_pieces));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BattlefieldInitialStateCopyWith<_$_BattlefieldInitialState>
      get copyWith =>
          __$$_BattlefieldInitialStateCopyWithImpl<_$_BattlefieldInitialState>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<PieceEntity> pieces) initial,
  }) {
    return initial(pieces);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PieceEntity> pieces)? initial,
  }) {
    return initial?.call(pieces);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PieceEntity> pieces)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(pieces);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BattlefieldInitialState value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BattlefieldInitialState value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BattlefieldInitialState value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _BattlefieldInitialState implements BattlefieldState {
  const factory _BattlefieldInitialState(final List<PieceEntity> pieces) =
      _$_BattlefieldInitialState;

  @override
  List<PieceEntity> get pieces;
  @override
  @JsonKey(ignore: true)
  _$$_BattlefieldInitialStateCopyWith<_$_BattlefieldInitialState>
      get copyWith => throw _privateConstructorUsedError;
}
