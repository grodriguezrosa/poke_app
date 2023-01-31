import 'package:equatable/equatable.dart';

import '../../request/general_body_name_url.dart';

class MoveDetails extends Equatable {
  final int? levelLearned;
  final GeneralBodyNameAndUrl? moveLearnedMethod;

  const MoveDetails({this.levelLearned, this.moveLearnedMethod});

  @override
  List<Object?> get props => [levelLearned, moveLearnedMethod];
}
