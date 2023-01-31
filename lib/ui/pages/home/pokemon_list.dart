import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/blocs/pokemon_bloc/pokemon_bloc.dart';
import 'widgets/pokemon_card.dart';

class PokemonList extends StatelessWidget {
  final PokemonState state;

  const PokemonList({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    final ScrollController scrollController = ScrollController();

    void _onScroll() async {
      double maxScroll = scrollController.position.maxScrollExtent;
      double curretScroll = scrollController.offset;

      if (curretScroll == maxScroll) {
        BlocProvider.of<PokemonBloc>(context)
            .add(FetchPokemonListEvent());
      }
    }

    scrollController.addListener(_onScroll);

    return ListView.builder(
        controller: scrollController,
        itemCount: state.stateData.pokemonDataList!.length,
        itemBuilder: (context, i) {
          return PokemonCard(state: state, index: i);
        });
  }
}
