import 'package:future_hub/common/shared/cubits/drawer_cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DrawerCubit extends Cubit<DrawerStates>{
  DrawerCubit():super(DrawerDataState(isDrawerOpen: false));


  changeDrawerState(){
    emit(DrawerDataState(isDrawerOpen: !(state as DrawerDataState).isDrawerOpen));
  }
}