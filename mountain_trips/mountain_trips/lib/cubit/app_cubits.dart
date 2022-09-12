import 'package:bloc/bloc.dart';
import 'package:mountain_trips/cubit/app_cubit_states.dart';
import 'package:mountain_trips/model/data_model.dart';
import 'package:mountain_trips/services/data_services.dart';

class AppCubits extends Cubit<CubitStates> {
  AppCubits(
    this.data,
  ) : super(InitialState()) {
    emit(WelcomeState());
  }

  final DataServices data;
  late final places;

  void getData() async {
    try {
      emit(LoadingState());
      places = await data.getInfo();
      emit(LoadedState(places));
    } catch (e) {}
  }

  detailPage(DataModel data) {
    emit(DetailState(data));
  }

  goHome() {
    emit(LoadedState(places));
  }
}
