import '../../../../core/core.dart';
import '../../../domain/domain.dart';
import '../../../domain/entities/farm.dart';
import '../../../domain/entities/field.dart';
import '../../../domain/entities/harvest.dart';
import '../../../domain/entities/localization_params.dart';
import '../../../operator_module.dart';
import 'home_state.dart';

/// ViewModel of [LoginPage]
class HomeViewModel extends ViewModel<HomeState> {
  /// Constructor of [HomeViewModel]
  HomeViewModel() : super(HomeState.initial());

  /// Method to realize login
  Future<void> getLocationParams() async {
    emit(LoadingHome());

    emit(LoadedHome());

    // final loginParams = LoginParams(user: user, password: password);
    // final usecase = await _loginUsecase(loginParams);

    // final newState = usecase.fold((l) => ErrorLogin(), (r) => SuccessLogin());

    // emit(newState);
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
