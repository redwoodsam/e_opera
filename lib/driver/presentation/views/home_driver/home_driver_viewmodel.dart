import '../../../../core/core.dart';
import '../../../../login/domain/domain.dart';
import '../../../../login/presentation/views/login_state.dart';
import '../../../domain/domain.dart';
import '../../../domain/usecases/get_loggedIn_user_usecase.dart';
import '../../../domain/usecases/synchronize_local_database_usecase.dart';
import '../../../driver_module.dart';
import 'home_driver_state.dart';

/// ViewModel of [LoginPage]
class DriverHomeViewModel extends ViewModel<DriverHomeState> {
  final IGetLoggedInUserUsecase _getLoggedInUserUsecase;
  final ISynchronizeLocalDatabaseUsecase _synchronizeLocalDatabaseUsecase;

  /// Constructor of [DriverHomeViewModel]
  DriverHomeViewModel(
    this._getLoggedInUserUsecase,
    this._synchronizeLocalDatabaseUsecase,
  ) : super(DriverHomeState.initial());

  /// Method to realize login
  Future<void> synchronizeLocalDatabaseUsecase(Login loggedInUser) async {
    emit(DriverLoadingHome());

    await _synchronizeLocalDatabaseUsecase();
    emit(DriverLoadedHome(loggedInUser: loggedInUser, syncronizing: true));
  }

  Future<void> getCredentials() async {
    emit(DriverLoadingHome());

    var either = await _getLoggedInUserUsecase();
    // final loginParams = LoginParams(user: user, password: password);
    // final usecase = await _loginUsecase(loginParams);

    // final newState = usecase.fold((l) => ErrorLogin(), (r) => SuccessLogin());

    // emit(newState);
    emit(DriverLoadedHome(loggedInUser: either.toRight()));
  }
}
