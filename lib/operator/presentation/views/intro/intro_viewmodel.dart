import '../../../../core/core.dart';
import '../../../domain/domain.dart';
import '../../../domain/usecases/get_fields_usecase.dart';
import '../../../domain/usecases/get_harvests_usecase.dart';
import 'intro_state.dart';

/// ViewModel of [LoginPage]
class IntroViewModel extends ViewModel<IntroState> {
  final IGetFarmsUsecase _getFarmsUsecase;
  final IGetFieldsUsecase _getFieldsUsecase;
  final IGetHarvestsUsecase _getHarvestsUsecase;

  /// Constructor of [IntroViewModel]
  IntroViewModel(
      this._getFarmsUsecase, this._getFieldsUsecase, this._getHarvestsUsecase,)
      : super(IntroState.initial());

  /// Method to realize login
  Future<void> getFarms() async {
    emit(LoadingIntro());
    final getFarms = await _getFarmsUsecase();
    await _getFieldsUsecase();
    await _getHarvestsUsecase();

    print(getFarms);
    final newFarmsState =
        getFarms.fold((l) => ErrorIntro(), (r) => SuccessIntro());

    // final loginParams = LoginParams(user: user, password: password);
    // final usecase = await _loginUsecase(loginParams);

    // final newState = usecase.fold((l) => ErrorLogin(), (r) => SuccessLogin());

    // emit(newState);
  }
}
