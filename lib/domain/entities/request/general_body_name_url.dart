import 'package:equatable/equatable.dart';

class GeneralBodyNameAndUrl extends Equatable {
  final String? name;
  final String? url;

  const GeneralBodyNameAndUrl({this.name, this.url});

  @override
  List<Object?> get props => [name, url];
}
