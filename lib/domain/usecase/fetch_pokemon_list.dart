

import 'package:poke_app/domain/entities/error/failures.dart';

import 'package:dartz/dartz.dart';

import '../entities/request/resquest_body.dart';
import '../entities/usecase/usecase.dart';
import '../repositories/pokemon_repository.dart';

class FetchPokemonListUseCase extends UseCase<RequestBody, NoParams> {
  
  final PokemonRepository repository;

  FetchPokemonListUseCase({required this.repository});
  
  @override
  Future<Either<Failure, RequestBody>> call(NoParams params) async {
    return await repository.fetchPokemonList();
  }
}