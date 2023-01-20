part of 'pokemon_bloc.dart';

abstract class PokemonState extends Equatable {
  const PokemonState();

  @override
  List<Object> get props => [];
}

class PokemonInitialState extends PokemonState {}

class FechedPokemonsState extends PokemonState {
  final List<DataPokemonList> pokemonDataList;

  const FechedPokemonsState({required this.pokemonDataList});
}

class FailedToFetchPokemonList extends PokemonState {}
