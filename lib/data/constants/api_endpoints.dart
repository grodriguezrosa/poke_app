// ignore_for_file: prefer_interpolation_to_compose_strings, unnecessary_string_interpolations

class ApiEndpoints {

  //Base url of api
  final String apiBase = 'https://pokeapi.co/api/v2/';

  //Api endpoints

  ///`Fetch pokemon List`
  String get fetchPokemonList => apiBase + 'pokemon';

  ///`Get pokemon data`
  String getPokemonData({required String pokemonName}) => apiBase + '$pokemonName';

  
}