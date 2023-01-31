import 'package:equatable/equatable.dart';

import '../games/game_index.dart';
import '../request/general_body_name_url.dart';
import 'pokemon_abilities/pokemon_abilities.dart';
import 'pokemon_moves/pokemon_moves.dart';
import 'pokemon_stats/pokemon_stats.dart';
import 'pokemon_types/pokemon_types.dart';

class Pokemon extends Equatable {
  final int id;
  final String name;
  final int? order;
  final GeneralBodyNameAndUrl? species;
  final int? height;
  final int? weight;
  final bool? isDefault;
  final String? locationArea;
  final List<PokemonAbilities>? pokemonAbilities;
  final int? baseExpirience;
  final List<GeneralBodyNameAndUrl>? pokemonForms;
  final List<GameIndex>? gameIndex;
  final List<PokemonMoves>? pokemonMoves;
  final List<PokemonStats>? pokemonStats;
  final List<PokemonTypes>? pokemonTypes;

  const Pokemon({
    required this.id,
    required this.name, 
    this.order, 
    this.species, 
    this.height, 
    this.weight, 
    this.isDefault, 
    this.locationArea, 
    this.pokemonAbilities, 
    this.baseExpirience, 
    this.pokemonForms, 
    this.gameIndex, 
    this.pokemonMoves, 
    this.pokemonStats, 
    this.pokemonTypes
  });

  @override
  List<Object?> get props => [
    id,
    name,
    order,
    species,
    height,
    weight,
    isDefault,
    locationArea,
    pokemonAbilities,
    baseExpirience,
    pokemonForms,
    gameIndex,
    pokemonMoves,
    pokemonStats,
    pokemonTypes
  ];
}
