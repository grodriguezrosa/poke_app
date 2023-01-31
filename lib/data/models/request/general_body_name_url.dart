
import '../../../domain/entities/request/general_body_name_url.dart';

class GeneralBodyNameAndUrlModel extends GeneralBodyNameAndUrl {
  
  const GeneralBodyNameAndUrlModel({
    required String name, 
    required String url
  }) : super(
    name: name,
    url: url
  );

  factory GeneralBodyNameAndUrlModel.fromJson(Map<String, dynamic> json) {
    return GeneralBodyNameAndUrlModel(
      name: json['name'], 
      url: json['url']
    );
  }

}