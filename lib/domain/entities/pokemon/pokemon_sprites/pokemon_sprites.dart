import 'package:equatable/equatable.dart';

class PokemonSprites extends Equatable {
  final String? backDefault;
  final String? backFemale;
  final String? backShiny;
  final String? frontDefault;
  final String? frontFemale;
  final String? frontShiny;

  const PokemonSprites({
    this.backDefault, 
    this.backFemale, 
    this.backShiny, 
    this.frontDefault, 
    this.frontFemale, 
    this.frontShiny
  });

  @override
  List<Object?> get props => [
    backDefault,
    backFemale,
    backShiny,
    frontDefault,
    frontFemale,
    frontShiny
  ];
}
