import 'package:poke_app/data/models/pokemons/data_pokemon_list_model.dart';

import '../../../domain/entities/pokemon/data_pokemon_list.dart';
import '../../../domain/entities/request/resquest_body.dart';

class RequestBodyModel extends RequestBody {
  
  const RequestBodyModel({
    required int count, 
    String? next, 
    String? previous, 
    required List<DataPokemonList> dataPokemonList
  }) : super(
    count: count,
    next: next,
    previous: previous,
    dataPokemonList: dataPokemonList
  );

  factory RequestBodyModel.fromJson(Map<String, dynamic> json) {
    List<DataPokemonList>? pokeList;
    if(json['results'] != null) {
      pokeList = [];
      json['results'].forEach((v) {
        pokeList!.add(DataPokemonListModel.fromJson(v));
      });
    }
    return RequestBodyModel(
      count: json['count'], 
      next: json['next'], 
      previous: json['previous'], 
      dataPokemonList: pokeList ?? []
    );
  }

}