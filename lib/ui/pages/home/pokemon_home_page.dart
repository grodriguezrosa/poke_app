
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class PokemonHomePage extends StatelessWidget {
  
  const PokemonHomePage({super.key});

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        color: Colors.white,
        child: Center(
          child: Lottie.asset(
            'poke_loader.json',
            width: size.width * 0.10,
            height: size.height * 0.10
          )
        ),
      ),
    );
  }
}