import '../../../../core/core.dart';
import '../../../../login/presentation/views/login_state.dart';
import '../../../domain/domain.dart';
import '../../../driver_module.dart';
import 'home_driver_state.dart';

/// ViewModel of [LoginPage]
class DriverHomeViewModel extends ViewModel<DriverHomeState> {
  /// Constructor of [DriverHomeViewModel]
  DriverHomeViewModel() : super(DriverHomeState.initial());

  /// Method to realize login
  Future<void> getLocationParams() async {
    emit(DriverLoadingHome());

    // final loginParams = LoginParams(user: user, password: password);
    // final usecase = await _loginUsecase(loginParams);

    // final newState = usecase.fold((l) => ErrorLogin(), (r) => SuccessLogin());

    // emit(newState);
    emit(DriverSuccessHome());
  }

  // void navigateToHomePage() {
  //   switch (state) {
  //     case LoadedHome(
  //       ):
  //       {
  //         LocationParams locationParams = LocationParams(
  //           farm: selectedFarm!,
  //           harvest: selectedHarvest!,
  //           field: selectedField!,
  //         );
  //         Nav.pushNamed(OperatorModule.home, arguments: locationParams);
  //       }
  //     default:
  //       null;
  //   }
}
