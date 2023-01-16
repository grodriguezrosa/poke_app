
import 'dart:async';

import 'package:flutter/material.dart';

import '../../utils/routes/routes_name.dart';

class SplashPage extends StatefulWidget {
  
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    Timer(
      const Duration(seconds: 4), 
      () => Navigator.of(context).pushNamed(Routes.pokemonList)
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    
    final size = MediaQuery.of(context).size;

    return Container(
      height: size.height,
      width: size.width,
      color: Colors.red,
      child: Center(
        child: Image.asset(
          'assets/title_font.png'
        )
      ),
    );
  }
} 