
import 'package:poke_app/domain/entities/error/failures.dart';

import 'package:dartz/dartz.dart';

import '../../domain/entities/error/exceptions.dart';
import '../../domain/entities/request/resquest_body.dart';
import '../../domain/repositories/pokemon_repository.dart';
import '../data_sources/pokemon_data_source.dart';

class PokemonRepositoryImpl extends PokemonRepository {

  final PokemonDataSource pkmDataSource;

  PokemonRepositoryImpl({required this.pkmDataSource});

  @override
  Future<Either<Failure, RequestBody>> fetchPokemonList({String? url}) async {
    try {
      final fetchPokemonList = await pkmDataSource.fetchPokemonList(url: url);
      return Right(fetchPokemonList);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}