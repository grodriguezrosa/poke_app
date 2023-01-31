import 'package:equatable/equatable.dart';

import 'general_body_name_url.dart';


class RequestBody extends Equatable {
  
  final int count;
  final String? next;
  final String? previous;
  final List<GeneralBodyNameAndUrl> dataPokemonList;

  const RequestBody({
    required this.count,
    this.next,
    this.previous,
    required this.dataPokemonList
  });
  
  @override
  List<Object?> get props => [
    count,
    next,
    previous,
    dataPokemonList
  ];
}