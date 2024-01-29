import '../../../../core/core.dart';
import '../../domain/usecases/login_usecase.dart';
import '../../login.dart';
import 'login_state.dart';

/// ViewModel of [LoginPage]
class LoginViewModel extends ViewModel<LoginState> {
  final ILoginUsecase _loginUsecase;

  /// Constructor of [LoginViewModel]
  LoginViewModel(this._loginUsecase) : super(LoginState.initial());

  /// Method to realize login
  Future<void> login(String user, String password) async {
    emit(LoadingLogin());
    final loginParams = LoginParams(user: user, password: password);
    final usecase = await _loginUsecase(loginParams);

    final newState = usecase.fold(
      (l) => ErrorLogin(),
      (r) => SuccessLogin(id: r.id, nome: r.nome, perfil: r.perfil),
    );

    emit(newState);
  }
}
