// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../login.dart';

part 'login_params_model.freezed.dart';
part 'login_params_model.g.dart';

///
/// Model params to login user
///
@freezed
class LoginParamsModel with _$LoginParamsModel {
  const LoginParamsModel._();

  ///
  /// [LoginParamsModel] default constructor
  ///
  const factory LoginParamsModel({
    @JsonKey(name: 'usuario') required String user,
    @JsonKey(name: 'password') required String password,
  }) = _LoginParamsModel;

  ///
  /// Creates a new [LoginParamsModel] instance from a map
  ///
  factory LoginParamsModel.fromJson(Map<String, dynamic> json) =>
      _$LoginParamsModelFromJson(json);

  ///Creates a [LoginParamsModel] from a [LoginParams] entity.
  factory LoginParamsModel.fromEntity(
    LoginParams entity,
  ) =>
      LoginParamsModel(
       user: entity.user,
       password: entity.password,
      );
}
