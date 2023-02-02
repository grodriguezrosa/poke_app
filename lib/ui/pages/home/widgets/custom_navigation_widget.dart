import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../domain/blocs/bottom_navigation_bloc/bottom_navigation_bloc.dart';
import 'custom_navigation_item.dart';

class CustomNavigationWidget extends StatelessWidget {
  const CustomNavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavigationBloc, int>(
      builder: (context, currentTab) {
        return BottomNavigationBar(
          elevation: 0,
          currentIndex: currentTab,
          selectedItemColor: Colors.purple,
          unselectedItemColor: Colors.grey,
          onTap: (val) => BlocProvider.of<BottomNavigationBloc>(context)..add(OnTabChangeEvent(nexIndex: val)),
          items: [
            customNavigationWidget(context: context, value: 'pokeboll'),
            customNavigationWidget(context: context, value: 'object')
          ]
        );
      }
    );
  }
}