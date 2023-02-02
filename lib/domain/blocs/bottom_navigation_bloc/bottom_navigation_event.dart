part of 'bottom_navigation_bloc.dart';

abstract class BottomNavigationEvent extends Equatable {
  const BottomNavigationEvent();

  @override
  List<Object> get props => [];
}

class OnTabChangeEvent extends BottomNavigationEvent {
  final int nexIndex;
  const OnTabChangeEvent({required this.nexIndex});

  @override
  List<Object> get props => [nexIndex];
}