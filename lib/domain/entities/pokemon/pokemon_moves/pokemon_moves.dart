import 'package:equatable/equatable.dart';

import '../../request/general_body_name_url.dart';
import 'move_details.dart';

class PokemonMoves extends Equatable {
  final GeneralBodyNameAndUrl? move;
  final List<MoveDetails>? moveDetails;

  const PokemonMoves({this.move, this.moveDetails});

  @override
  List<Object?> get props => [move, moveDetails];
}
