import 'package:get_it/get_it.dart';
import 'package:weather/data/remote/weather_remote_data_source.dart';
import 'package:weather/domain/repositories/weather_repository.dart';
import 'package:weather/features/home/cubit/home_cubit.dart';

final getIt = GetIt.instance;

void configureDependencies() {
  //Bloc
  getIt.registerFactory(() => HomeCubit(weatherRepository: getIt()));

//Repository
  getIt.registerFactory(
      () => WeatherRepository(weatherRemoteDataSource: getIt()));

//RemoteDataSource
  getIt.registerFactory(() => WeatherRemoteDataSource());
}
