import 'package:app_flutter/services/data_services.dart';
import 'package:bloc/bloc.dart';

import 'app_cubit_states.dart';

class AppCubits extends Cubit<CubitStates>{
  AppCubits({required this.data}):super(InitialState()){
    emit(WelComeState());
  }
  final DataServices data;
  late final places;
  void getData() async {
    try{
      emit(LoadingState());
      places = await data.getInfo();
      emit(LoadedState(places));
    }catch(e){

    }
}
}