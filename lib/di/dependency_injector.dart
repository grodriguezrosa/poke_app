// ignore_for_file: avoid_single_cascade_in_expression_statements

import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:poke_app/data/constants/api_endpoints.dart';

import '../data/data_sources/pokemon_data_source.dart';
import '../data/repositories/pokemon_repository_impl.dart';
import '../domain/blocs/pokemon_bloc/pokemon_bloc.dart';
import '../domain/repositories/pokemon_repository.dart';
import '../domain/usecase/fetch_pokemon_list.dart';

final sl = GetIt.instance;

Future<void> init() async {

  sl
  ..registerLazySingleton(() => http.Client())
  ..registerLazySingleton(() => ApiEndpoints())
  
  //Bloc
  ..registerFactory(() => PokemonBloc(
    fetchPokemonListUseCase: sl(),
  ))

  //UseCase
  ..registerLazySingleton(() => FetchPokemonListUseCase(repository: sl()))

  //Repository
  ..registerLazySingleton<PokemonRepository>(() => 
    PokemonRepositoryImpl(pkmDataSource: sl()))

  //Data sources
  ..registerLazySingleton<PokemonDataSource>(() => 
    PokemonDataSourceImpl(apiEndpoints: sl(), client: sl()));

}