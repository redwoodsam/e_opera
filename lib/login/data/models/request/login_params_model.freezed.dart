// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_params_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginParamsModel _$LoginParamsModelFromJson(Map<String, dynamic> json) {
  return _LoginParamsModel.fromJson(json);
}

/// @nodoc
mixin _$LoginParamsModel {
  @JsonKey(name: 'usuario')
  String get user => throw _privateConstructorUsedError;
  @JsonKey(name: 'password')
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginParamsModelCopyWith<LoginParamsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginParamsModelCopyWith<$Res> {
  factory $LoginParamsModelCopyWith(
          LoginParamsModel value, $Res Function(LoginParamsModel) then) =
      _$LoginParamsModelCopyWithImpl<$Res, LoginParamsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'usuario') String user,
      @JsonKey(name: 'password') String password});
}

/// @nodoc
class _$LoginParamsModelCopyWithImpl<$Res, $Val extends LoginParamsModel>
    implements $LoginParamsModelCopyWith<$Res> {
  _$LoginParamsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginParamsModelImplCopyWith<$Res>
    implements $LoginParamsModelCopyWith<$Res> {
  factory _$$LoginParamsModelImplCopyWith(_$LoginParamsModelImpl value,
          $Res Function(_$LoginParamsModelImpl) then) =
      __$$LoginParamsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'usuario') String user,
      @JsonKey(name: 'password') String password});
}

/// @nodoc
class __$$LoginParamsModelImplCopyWithImpl<$Res>
    extends _$LoginParamsModelCopyWithImpl<$Res, _$LoginParamsModelImpl>
    implements _$$LoginParamsModelImplCopyWith<$Res> {
  __$$LoginParamsModelImplCopyWithImpl(_$LoginParamsModelImpl _value,
      $Res Function(_$LoginParamsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? password = null,
  }) {
    return _then(_$LoginParamsModelImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginParamsModelImpl extends _LoginParamsModel {
  const _$LoginParamsModelImpl(
      {@JsonKey(name: 'usuario') required this.user,
      @JsonKey(name: 'password') required this.password})
      : super._();

  factory _$LoginParamsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginParamsModelImplFromJson(json);

  @override
  @JsonKey(name: 'usuario')
  final String user;
  @override
  @JsonKey(name: 'password')
  final String password;

  @override
  String toString() {
    return 'LoginParamsModel(user: $user, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginParamsModelImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, user, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginParamsModelImplCopyWith<_$LoginParamsModelImpl> get copyWith =>
      __$$LoginParamsModelImplCopyWithImpl<_$LoginParamsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginParamsModelImplToJson(
      this,
    );
  }
}

abstract class _LoginParamsModel extends LoginParamsModel {
  const factory _LoginParamsModel(
          {@JsonKey(name: 'usuario') required final String user,
          @JsonKey(name: 'password') required final String password}) =
      _$LoginParamsModelImpl;
  const _LoginParamsModel._() : super._();

  factory _LoginParamsModel.fromJson(Map<String, dynamic> json) =
      _$LoginParamsModelImpl.fromJson;

  @override
  @JsonKey(name: 'usuario')
  String get user;
  @override
  @JsonKey(name: 'password')
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$LoginParamsModelImplCopyWith<_$LoginParamsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
