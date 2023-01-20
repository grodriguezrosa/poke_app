import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../di/dependency_injector.dart';
import '../../../domain/blocs/pokemon_bloc/pokemon_bloc.dart';
import '../../widgets/loader_widget.dart';

class PokemonHomePage extends StatelessWidget {
  const PokemonHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PokemonBloc>(
      create: (context) => sl<PokemonBloc>()..add(FetchPokemonListEvent()),
      child: Scaffold(
        body: BlocBuilder<PokemonBloc, PokemonState>(
          builder: (context, state) {
            if (state is PokemonInitialState) {
              return const LoaderWidget();
            } else if (state is FechedPokemonsState) {
              return ListView.builder(
                  shrinkWrap: true,
                  itemCount: state.pokemonDataList.length,
                  itemBuilder: (context, i) {
                    return Text(state.pokemonDataList[i].name);
                  });
            } else {
              return const Center(child: Text('data error'));
            }
          },
        ),
      ),
    );
  }
}
