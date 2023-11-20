import '../../login.dart';

abstract class ILoginUsecase {
  Future<void> login();
}


class LoginUsecase implements ILoginUsecase{
  final ILoginRepository _repository;

  LoginUsecase(this._repository);
  @override
  Future<void> login() async {
    _repository.login();
  }

}