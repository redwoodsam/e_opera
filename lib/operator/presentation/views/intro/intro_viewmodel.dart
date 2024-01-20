import '../../../../core/core.dart';
import '../../../domain/domain.dart';
import '../../../domain/entities/farm.dart';
import '../../../domain/entities/field.dart';
import '../../../domain/entities/harvest.dart';
import '../../../domain/entities/localization_params.dart';
import '../../../domain/usecases/get_fields_usecase.dart';
import '../../../domain/usecases/get_harvests_usecase.dart';
import '../../../operator_module.dart';
import 'intro_state.dart';

/// ViewModel of [LoginPage]
class IntroViewModel extends ViewModel<IntroState> {
  final IGetFarmsUsecase _getFarmsUsecase;
  final IGetFieldsUsecase _getFieldsUsecase;
  final IGetHarvestsUsecase _getHarvestsUsecase;

  /// Constructor of [IntroViewModel]
  IntroViewModel(
      this._getFarmsUsecase, this._getFieldsUsecase, this._getHarvestsUsecase)
      : super(IntroState.initial());

  /// Method to realize login
  Future<void> getFarms() async {
    emit(LoadingIntro());
    final usecases = await Future.wait(
        [_getFarmsUsecase(), _getFieldsUsecase(), _getHarvestsUsecase()]);

    if (usecases.any((element) => element.isLeft())) {
      emit(ErrorIntro());
      return;
    }

    emit(LoadedIntro(
        farms: usecases.first.toRight() as List<Farm>,
        fields: usecases[1].toRight() as List<Field>,
        harvests: usecases[2].toRight() as List<Harvest>));

    // final loginParams = LoginParams(user: user, password: password);
    // final usecase = await _loginUsecase(loginParams);

    // final newState = usecase.fold((l) => ErrorLogin(), (r) => SuccessLogin());

    // emit(newState);
  }

  void navigateToHomePage() {
    switch (state) {
      case LoadedIntro(
          :final copyWith,
          :final selectedFarm,
          :final selectedField,
          :final selectedHarvest
        ):
        {
          LocationParams locationParams = LocationParams(
            farm: selectedFarm!,
            harvest: selectedHarvest!,
            field: selectedField!,
          );
          Nav.pushNamed(OperatorModule.home, arguments: locationParams);
        }
      default:
        null;
    }
  }

  void onSelectFarm(String selectedFarm) {
    switch (state) {
      case LoadedIntro(:final copyWith, :final farms):
        {
          final farm =
              farms.firstWhere((element) => element.farmName == selectedFarm);

          // similar ao {..., selectedFarm: farm} do JavaScript
          emit(copyWith(selectedFarm: farm));
        }
      default:
        return;
    }
  }

  void onSelectHarvest(String selectedHarvest) {
    switch (state) {
      case LoadedIntro(:final copyWith, :final harvests):
        {
          final harvest = harvests
              .firstWhere((element) => element.description == selectedHarvest);

          // similar ao {..., selectedFarm: farm} do JavaScript
          emit(copyWith(selectedHarvest: harvest));
        }
      default:
        return;
    }
  }

  void onSelectField(String selectedField) {
    switch (state) {
      case LoadedIntro(:final copyWith, :final fields):
        {
          final field = fields.firstWhere(
              (element) => element.fieldDescription == selectedField);

          // similar ao {..., selectedFarm: farm} do JavaScript
          emit(copyWith(selectedField: field));
        }
      default:
        return;
    }
  }
}
