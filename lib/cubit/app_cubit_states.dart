import 'package:equatable/equatable.dart';

import '../model/data_model.dart';
abstract class CubitStates extends Equatable{}

class InitialState extends CubitStates{
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class WelComeState extends CubitStates{
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class LoadingState extends CubitStates{
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class LoadedState extends CubitStates{
  late final List<DataModel> places;
  LoadedState(this.places);
  @override
  // TODO: implement props
  List<Object?> get props => [places];
}