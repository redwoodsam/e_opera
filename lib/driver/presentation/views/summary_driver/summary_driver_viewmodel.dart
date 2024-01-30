import '../../../../core/core.dart';
import '../../../domain/entities/collect.dart';
import 'summary_driver_state.dart';

class SummaryDriverViewModel extends ViewModel<SummaryDriverState> {
  SummaryDriverViewModel() : super(SummaryDriverState.initial());

  Future<void> fetchData() async {
    emit(SummaryDriverLoading());

    emit(LoadedSummaryDriverState());
  }

  void onInitData(Collect collect) {
    emit(SummaryDriverLoading());

    emit(LoadedSummaryDriverState(collectedData: collect));
  }
}
