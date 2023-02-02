import 'package:bloc/bloc.dart';

import '../../entities/states/pokemon_state_data.dart';
import '../../usecase/fetch_pokemon_list.dart';

part 'pokemon_event.dart';
part 'pokemon_state.dart';

class PokemonBloc extends Bloc<PokemonEvent, PokemonState> {
  final FetchPokemonListUseCase fetchPokemonListUseCase;
  PokemonBloc({required this.fetchPokemonListUseCase})
    : super(PokemonInitialState(
      stateData: const PokemonStateData(
        pokemonStatus: PokemonStatus.initial,
        pokemonDataList: [],
        hasReachedMax: false,
        next: ''
      )
    )) {
    on<FetchPokemonListEvent>(_onPokemonsFeched);
  }

  _onPokemonsFeched(FetchPokemonListEvent? fetchPokemonListEvent,
      Emitter<PokemonState> emitter) async {
    if (state.stateData.hasReachedMax!) return;
      if (state.stateData.pokemonStatus == PokemonStatus.initial) {
      final fetchList = await fetchPokemonListUseCase.call(const FetchPokemonListUseCaseParams());
      emitter(fetchList.fold(
        (l) => state.copyWith(
            stateData: state.stateData.copyWith(
              pokemonDataList: [],
              pokemonStatus: PokemonStatus.failure,
              hasReachedMax: false
            )),
        (r) => state.copyWith(
            stateData: state.stateData.copyWith(
              pokemonDataList: r.dataPokemonList,
              pokemonStatus: PokemonStatus.succes,
              hasReachedMax: false,
              next: r.next
            )),
      ));
    } else {
      final fetchList = await fetchPokemonListUseCase.call(FetchPokemonListUseCaseParams(url: state.stateData.next));
      emitter(fetchList.fold(
      (l) => state.copyWith(stateData: state.stateData.copyWith(
         pokemonDataList: [],
         pokemonStatus: PokemonStatus.failure,
         hasReachedMax: false
       )), 
       (r) => state.copyWith(stateData: state.stateData.copyWith(
         pokemonDataList: List.of(state.stateData.pokemonDataList!)..addAll(r.dataPokemonList),
         pokemonStatus: PokemonStatus.succes,
         hasReachedMax: r.next != null ? false : true,
         next: r.next
       )), 
    ));
    }
  }
}
