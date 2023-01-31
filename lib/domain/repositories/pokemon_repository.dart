import 'package:dartz/dartz.dart';

import '../entities/error/failures.dart';
import '../entities/request/resquest_body.dart';

abstract class PokemonRepository {
  
  Future<Either<Failure, RequestBody>> fetchPokemonList({String? url});
}