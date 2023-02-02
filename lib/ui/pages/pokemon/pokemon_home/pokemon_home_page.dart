import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../di/dependency_injector.dart';
import '../../../../domain/blocs/pokemon_bloc/pokemon_bloc.dart';
import '../../../../domain/entities/states/pokemon_state_data.dart';
import '../../../widgets/loaders/loader_widget.dart';
import 'widgets/pokemon_list.dart';

class PokemonHomePage extends StatelessWidget {
  const PokemonHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PokemonBloc>(
      create: (context) => sl<PokemonBloc>()..add(FetchPokemonListEvent()),
      child: Scaffold(
        body: BlocBuilder<PokemonBloc, PokemonState>(
          builder: (context, state) {
            if(state.stateData.pokemonStatus == PokemonStatus.initial) {
              return const LoaderWidget();
            } else if(state.stateData.pokemonStatus == PokemonStatus.succes) {
              return PokemonList(state: state);
            } else {
              return const Center(child: Text('data error'));
            }
          },
        ),
      ),
    );
  }
}
