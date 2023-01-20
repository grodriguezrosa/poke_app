
 import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../di/dependency_injector.dart';
import '../../domain/blocs/pokemon_bloc/pokemon_bloc.dart';


 class Providers {
   static List<BlocProvider> providers(BuildContext context) {
    return [
      BlocProvider(create: (context) => sl<PokemonBloc>())
    ];
  }
}