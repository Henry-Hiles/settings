// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'decorations.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Decorations {
  List<YaruWindowControlType> get leading => throw _privateConstructorUsedError;
  List<YaruWindowControlType> get trailing =>
      throw _privateConstructorUsedError;

  /// Create a copy of Decorations
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DecorationsCopyWith<Decorations> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DecorationsCopyWith<$Res> {
  factory $DecorationsCopyWith(
          Decorations value, $Res Function(Decorations) then) =
      _$DecorationsCopyWithImpl<$Res, Decorations>;
  @useResult
  $Res call(
      {List<YaruWindowControlType> leading,
      List<YaruWindowControlType> trailing});
}

/// @nodoc
class _$DecorationsCopyWithImpl<$Res, $Val extends Decorations>
    implements $DecorationsCopyWith<$Res> {
  _$DecorationsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Decorations
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? leading = null,
    Object? trailing = null,
  }) {
    return _then(_value.copyWith(
      leading: null == leading
          ? _value.leading
          : leading // ignore: cast_nullable_to_non_nullable
              as List<YaruWindowControlType>,
      trailing: null == trailing
          ? _value.trailing
          : trailing // ignore: cast_nullable_to_non_nullable
              as List<YaruWindowControlType>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DecorationsImplCopyWith<$Res>
    implements $DecorationsCopyWith<$Res> {
  factory _$$DecorationsImplCopyWith(
          _$DecorationsImpl value, $Res Function(_$DecorationsImpl) then) =
      __$$DecorationsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<YaruWindowControlType> leading,
      List<YaruWindowControlType> trailing});
}

/// @nodoc
class __$$DecorationsImplCopyWithImpl<$Res>
    extends _$DecorationsCopyWithImpl<$Res, _$DecorationsImpl>
    implements _$$DecorationsImplCopyWith<$Res> {
  __$$DecorationsImplCopyWithImpl(
      _$DecorationsImpl _value, $Res Function(_$DecorationsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Decorations
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? leading = null,
    Object? trailing = null,
  }) {
    return _then(_$DecorationsImpl(
      leading: null == leading
          ? _value._leading
          : leading // ignore: cast_nullable_to_non_nullable
              as List<YaruWindowControlType>,
      trailing: null == trailing
          ? _value._trailing
          : trailing // ignore: cast_nullable_to_non_nullable
              as List<YaruWindowControlType>,
    ));
  }
}

/// @nodoc

class _$DecorationsImpl implements _Decorations {
  const _$DecorationsImpl(
      {required final List<YaruWindowControlType> leading,
      required final List<YaruWindowControlType> trailing})
      : _leading = leading,
        _trailing = trailing;

  final List<YaruWindowControlType> _leading;
  @override
  List<YaruWindowControlType> get leading {
    if (_leading is EqualUnmodifiableListView) return _leading;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_leading);
  }

  final List<YaruWindowControlType> _trailing;
  @override
  List<YaruWindowControlType> get trailing {
    if (_trailing is EqualUnmodifiableListView) return _trailing;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trailing);
  }

  @override
  String toString() {
    return 'Decorations(leading: $leading, trailing: $trailing)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DecorationsImpl &&
            const DeepCollectionEquality().equals(other._leading, _leading) &&
            const DeepCollectionEquality().equals(other._trailing, _trailing));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_leading),
      const DeepCollectionEquality().hash(_trailing));

  /// Create a copy of Decorations
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DecorationsImplCopyWith<_$DecorationsImpl> get copyWith =>
      __$$DecorationsImplCopyWithImpl<_$DecorationsImpl>(this, _$identity);
}

abstract class _Decorations implements Decorations {
  const factory _Decorations(
      {required final List<YaruWindowControlType> leading,
      required final List<YaruWindowControlType> trailing}) = _$DecorationsImpl;

  @override
  List<YaruWindowControlType> get leading;
  @override
  List<YaruWindowControlType> get trailing;

  /// Create a copy of Decorations
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DecorationsImplCopyWith<_$DecorationsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
