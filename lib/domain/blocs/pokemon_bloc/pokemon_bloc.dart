import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:poke_app/domain/entities/usecase/usecase.dart';

import '../../entities/pokemon/data_pokemon_list.dart';
import '../../usecase/fetch_pokemon_list.dart';

part 'pokemon_event.dart';
part 'pokemon_state.dart';

class PokemonBloc extends Bloc<PokemonEvent, PokemonState> {
  final FetchPokemonListUseCase fetchPokemonListUseCase;
  PokemonBloc({required this.fetchPokemonListUseCase})
      : super(PokemonInitialState()) {
    on<FetchPokemonListEvent>((event, emit) async {
      emit(PokemonInitialState());
      final fetchList = await fetchPokemonListUseCase.call(NoParams());
      emit(fetchList.fold(
        (error) => FailedToFetchPokemonList(), 
        (pokemonData) => FechedPokemonsState(pokemonDataList: pokemonData.dataPokemonList)
      ));
    });
  }
}
