import 'dart:convert';

import '../../domain/entities/request/resquest_body.dart';
import '../constants/api_endpoints.dart';
import 'package:http/http.dart' as http;

import '../models/request/request_body_model.dart';

abstract class PokemonDataSource {
  Future<RequestBody> fetchPokemonList();
}

class PokemonDataSourceImpl extends PokemonDataSource {
  
  final ApiEndpoints apiEndpoints;
  final http.Client client;

  PokemonDataSourceImpl({
    required this.apiEndpoints,
    required this.client
  });
  
  @override
  Future<RequestBody> fetchPokemonList() async {
    return await _fetchPokemonList(
      url: apiEndpoints.fetchPokemonList
    );
  }

  Future<RequestBody> _fetchPokemonList({required String url}) async {
    final response = await client.get(
      Uri.parse(url)
    );

    if(response.statusCode >= 200 && response.statusCode <= 204) {
      final pokemonData = jsonDecode(utf8.decode(response.bodyBytes));
      return RequestBodyModel.fromJson(pokemonData);
    } else {
      throw 'error';
    }
  }
}