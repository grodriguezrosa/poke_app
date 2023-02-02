import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../di/dependency_injector.dart';
import '../../../domain/blocs/bottom_navigation_bloc/bottom_navigation_bloc.dart';
import '../object/object_page.dart';
import '../pokemon/pokemon_home/pokemon_home_page.dart';
import 'widgets/custom_navigation_widget.dart';

class HomePage extends StatelessWidget {
  
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    List<Widget> tabPages = [
      const PokemonHomePage(),
      const ObjectPage()
    ];

    return BlocProvider<BottomNavigationBloc>(
      create: (context) => sl<BottomNavigationBloc>(),
      child: Scaffold(
        body: BlocBuilder<BottomNavigationBloc, int>(
          builder: (context, currentPage) {
            return tabPages[currentPage];
          },
        ),
        bottomNavigationBar: const CustomNavigationWidget(),
      ),
    );
  }
}