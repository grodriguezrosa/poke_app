// ignore_for_file: recursive_getters

import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {

  const Failure({List properties = const <dynamic> []});

  @override
  List <Object> get props => props;
}

class ServerFailure extends Failure {}