import 'package:flutter/material.dart';

import '../../../../../domain/blocs/pokemon_bloc/pokemon_bloc.dart';

class PokemonCard extends StatelessWidget {
  final PokemonState state;
  final int index;

  const PokemonCard({
    super.key,
    required this.state, 
    required this.index
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 10),
      width: double.infinity,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 30,
                    child: Image.network(
                     'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/${index + 1}.png',
                      width: 130,
                      height: 130,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
