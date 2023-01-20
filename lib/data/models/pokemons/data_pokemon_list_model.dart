
import '../../../domain/entities/pokemon/data_pokemon_list.dart';

class DataPokemonListModel extends DataPokemonList {
  
  const DataPokemonListModel({
    required String name, 
    required String url
  }) : super(
    name: name,
    url: url
  );

  factory DataPokemonListModel.fromJson(Map<String, dynamic> json) {
    return DataPokemonListModel(
      name: json['name'], 
      url: json['url']
    );
  }

}