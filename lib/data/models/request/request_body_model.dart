import 'package:poke_app/data/models/request/general_body_name_url.dart';

import '../../../domain/entities/request/general_body_name_url.dart';
import '../../../domain/entities/request/resquest_body.dart';

class RequestBodyModel extends RequestBody {
  
  const RequestBodyModel({
    required int count, 
    String? next, 
    String? previous, 
    required List<GeneralBodyNameAndUrl> dataPokemonList
  }) : super(
    count: count,
    next: next,
    previous: previous,
    dataPokemonList: dataPokemonList
  );

  factory RequestBodyModel.fromJson(Map<String, dynamic> json) {
    List<GeneralBodyNameAndUrl>? pokeList;
    if(json['results'] != null) {
      pokeList = [];
      json['results'].forEach((v) {
        pokeList!.add(GeneralBodyNameAndUrlModel.fromJson(v));
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