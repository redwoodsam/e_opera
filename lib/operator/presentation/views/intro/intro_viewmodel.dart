import '../../../../core/core.dart';
import '../../../domain/domain.dart';
import 'intro_state.dart';

/// ViewModel of [LoginPage]
class IntroViewModel extends ViewModel<IntroState> {
  final IGetFarmsUsecase _getFarmsUsecase;

  /// Constructor of [IntroViewModel]
  IntroViewModel(this._getFarmsUsecase) : super(IntroState.initial());

  /// Method to realize login
  Future<void> getFarms() async {
    emit(LoadingIntro());
    await _getFarmsUsecase();
    // final loginParams = LoginParams(user: user, password: password);
    // final usecase = await _loginUsecase(loginParams);

    // final newState = usecase.fold((l) => ErrorLogin(), (r) => SuccessLogin());

    // emit(newState);
  }
}
