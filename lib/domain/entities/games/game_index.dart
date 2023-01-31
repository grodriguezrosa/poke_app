import 'package:equatable/equatable.dart';

import '../request/general_body_name_url.dart';

class GameIndex extends Equatable {
  final GeneralBodyNameAndUrl? gameVersion;
  final int? index;

  const GameIndex({this.gameVersion, this.index});

  @override
  List<Object?> get props => [
    gameVersion,
    index
  ];
}
