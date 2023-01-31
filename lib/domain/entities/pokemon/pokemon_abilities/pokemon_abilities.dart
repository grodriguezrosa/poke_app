import 'package:equatable/equatable.dart';

import '../../request/general_body_name_url.dart';


class PokemonAbilities extends Equatable {
  final GeneralBodyNameAndUrl? ability;
  final bool? isHidden;
  final int? slot;

  const PokemonAbilities({
    this.ability, 
    this.isHidden, 
    this.slot
  });

  @override
  List<Object?> get props => [
    ability,
    isHidden,
    slot
  ];
}
