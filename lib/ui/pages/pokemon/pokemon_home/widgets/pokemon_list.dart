import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../domain/blocs/pokemon_bloc/pokemon_bloc.dart';
import 'pokemon_card.dart';

class PokemonList extends StatefulWidget {
  final PokemonState state;

  const PokemonList({super.key, required this.state});

  @override
  State<PokemonList> createState() => _PokemonListState();
}

class _PokemonListState extends State<PokemonList> {

  final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    scrollController.addListener(_onScroll);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: scrollController,
      itemCount: widget.state.stateData.pokemonDataList!.length,
      itemBuilder: (context, i) {
        return PokemonCard(state: widget.state, index: i);
      }
    );
  }

    void _onScroll() async {
      double maxScroll = scrollController.position.maxScrollExtent;
      double curretScroll = scrollController.offset;

      if (curretScroll == maxScroll) {
        BlocProvider.of<PokemonBloc>(context)
        .add(FetchPokemonListEvent());
      }
    }

}
