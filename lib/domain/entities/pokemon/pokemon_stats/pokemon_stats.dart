import 'package:equatable/equatable.dart';

import '../../request/general_body_name_url.dart';

class PokemonStats extends Equatable {
  final int? baseStat;
  final int? effort;
  final GeneralBodyNameAndUrl? stat;

  const PokemonStats({this.baseStat, this.effort, this.stat});

  @override
  List<Object?> get props => [baseStat, effort, stat];
}
