import 'dart:async';
import 'dart:developer' as dev;

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';

import 'app.dart' as app;

class SimpleBlocObserver extends BlocObserver {

  @override
  void onEvent(bloc, event) {
    dev.log('$event', name: 'BlocObserver');
    super.onEvent(bloc, event);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    dev.log('$transition', name: 'BlocObserver');
    super.onTransition(bloc, transition);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    dev.log('$error', name: 'BlocObserver', stackTrace: stackTrace);
    super.onError(bloc, error, stackTrace);
  }
}

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await runZonedGuarded(() async {
    BlocOverrides.runZoned(() => app.launch(), blocObserver: SimpleBlocObserver());
  }, (error, stack) {
    dev.log('$error', name: 'PokeApp', error: error, stackTrace: stack);
  });
}