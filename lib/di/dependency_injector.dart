// ignore_for_file: avoid_single_cascade_in_expression_statements

import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;

final sl = GetIt.instance;

Future<void> init() async {

  sl
  ..registerLazySingleton(() => http.Client());

  //Bloc

  //Repository

  //Data sources
}