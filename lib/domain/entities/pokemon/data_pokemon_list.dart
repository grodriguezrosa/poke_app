
import 'package:equatable/equatable.dart';

class DataPokemonList extends Equatable {

  final String name;
  final String url;

  const DataPokemonList({required this.name, required this.url});

  @override
  List<Object?> get props => [
    name,
    url
  ];

}