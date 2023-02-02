import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoaderWidget extends StatelessWidget {
  const LoaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    
    final size = MediaQuery.of(context).size;
    
    return Container(
      height: size.height,
      width: size.width,
      color: Colors.white,
      child: Center(
        child: Lottie.asset('assets/poke_loader.json',
        width: size.width * 0.15, height: size.height * 0.15)
      )
    );
  }
}