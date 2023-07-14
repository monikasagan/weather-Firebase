import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:weather/app/core/enums.dart';
import 'package:weather/domain/models/weather_model.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeState());
}
