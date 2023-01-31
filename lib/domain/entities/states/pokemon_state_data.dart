import 'package:equatable/equatable.dart';

import '../request/general_body_name_url.dart';

enum PokemonStatus { initial, succes, failure }

class PokemonStateData extends Equatable {
  final PokemonStatus? pokemonStatus;
  final List<GeneralBodyNameAndUrl>? pokemonDataList;
  final String? next;
  final bool? hasReachedMax;

  const PokemonStateData({
    this.pokemonStatus = PokemonStatus.initial,
    this.pokemonDataList = const <GeneralBodyNameAndUrl>[],
    this.hasReachedMax = false,
    this.next = ""
  });

  PokemonStateData copyWith({
    PokemonStatus? pokemonStatus,
    List<GeneralBodyNameAndUrl>? pokemonDataList,
    String? next,
    bool? hasReachedMax
  }) => PokemonStateData(
    pokemonStatus: pokemonStatus ?? this.pokemonStatus,
    pokemonDataList: pokemonDataList ?? this.pokemonDataList,
    next: next ?? this.next,
    hasReachedMax: hasReachedMax ?? this.hasReachedMax
  );

  @override
  List<Object?> get props => [
    pokemonStatus,
    pokemonDataList,
    next,
    hasReachedMax
  ];
}
