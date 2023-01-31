part of 'pokemon_bloc.dart';

abstract class PokemonState {
  final PokemonStateData stateData;

  const PokemonState({required PokemonStateData? stateData})
      : stateData = stateData ?? const PokemonStateData();

  PokemonState copyWith({required PokemonStateData? stateData});
}

class PokemonInitialState extends PokemonState {
  PokemonInitialState({required PokemonStateData? stateData})
      : super(stateData: stateData);

  @override
  PokemonState copyWith({required PokemonStateData? stateData}) {
    return PokemonInitialState(stateData: stateData);
  }
}
