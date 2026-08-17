import 'package:flashcard/features/home/bloc/card/card_event.dart';
import 'package:flashcard/features/home/bloc/card/card_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CardBloc extends Bloc<CardEvent, CardState> {
  CardBloc() : super(CardState.initialState()) {
    on<CardFlipEvent>(_onCardFlipEvent);
    on<CardNextEvent>(_onCardNexEvent);
    on<CardPreviousEvent>(_onCardPreviousEvent);
  }

  void _onCardFlipEvent(CardFlipEvent event, Emitter<CardState> emit) {
    if (state.isFliped == false) {
      emit(state.copyWith(isFliped: true));
    } else {
      emit(state.copyWith(isFliped: false));
    }
  }

  void _onCardNexEvent(CardNextEvent event, Emitter<CardState> emit) {
    if (state.currentPage < event.totalCards - 1) {
      emit(state.copyWith(isFliped: false, currentPage: state.currentPage + 1));
    }
  }

  void _onCardPreviousEvent(CardPreviousEvent event, Emitter<CardState> emit) {
    if (state.currentPage > 0) {
      emit(state.copyWith(isFliped: false, currentPage: state.currentPage - 1));
    }
  }
}
