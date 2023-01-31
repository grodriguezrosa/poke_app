import 'package:equatable/equatable.dart';

import '../../request/general_body_name_url.dart';

class PokemonTypes extends Equatable {
  final int? slot;
  final GeneralBodyNameAndUrl? types;

  const PokemonTypes({this.slot, this.types});

  @override
  List<Object?> get props => [
    slot,
    types
  ];
}
