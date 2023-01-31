part of 'pokemon_bloc.dart';

class PokemonEvent {}

class FetchPokemonListEvent extends PokemonEvent {}

class ReFetchPokemonListEvent extends PokemonEvent {
  final String url;

  ReFetchPokemonListEvent({required this.url});
}
