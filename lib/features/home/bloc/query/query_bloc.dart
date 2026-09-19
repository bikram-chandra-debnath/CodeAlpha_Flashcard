import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flashcard/features/home/bloc/query/query_event.dart';
import 'package:flashcard/features/home/bloc/query/query_state.dart';
import 'package:flashcard/features/home/data/models/flash_card_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class QueryBloc extends Bloc<QueryEvent, QueryState> {
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  QueryBloc() : super(QueryInitialState()) {
    on<FechQueryEvent>(_onFechQueryEvent);
    on<DeleteCardEvent>(_onDeleteCardEvent);
    on<AddCardEvent>(_onAddCardEvent);
  }
  // Fech Flash Card from Database
  Future<void> _onFechQueryEvent(
    FechQueryEvent event,
    Emitter<QueryState> emit,
  ) async {
    emit(LoadingState());

    try {
      final querySnapshot = await _firebaseFirestore
          .collection("FlashCards")
          .get();

      final quotes = querySnapshot.docs.map((doc) {
        return FlashCardModel.fromFirestore(doc.id, doc.data());
      }).toList();
      emit(LoadedState(quotes));
    } catch (error) {
      emit(ErroeState(error.toString()));
    }
  }

  // Delete Card
  Future<void> _onDeleteCardEvent(
    DeleteCardEvent event,
    Emitter<QueryState> emit,
  ) async {
    try {
      await _firebaseFirestore.collection('FlashCards').doc(event.id).delete();

      if (state is LoadedState) {
        final currentCard = (state as LoadedState).query;

        final updatedCards = currentCard
            .where((item) => item.id != event.id)
            .toList();

        // 4. Emit new state
        emit(LoadedState(updatedCards));
      }
    } catch (error) {
      debugPrint("Delete error");
    }
  }

  // Add Card
  Future<void> _onAddCardEvent(
    AddCardEvent event,
    Emitter<QueryState> emit,
  ) async {
    if (event.question.isNotEmpty && event.answer.isNotEmpty) {
      final cardData = {
        'index': event.id,
        'question': event.question,
        'answer': event.answer,
        'createdAt': FieldValue.serverTimestamp(),
      };

      try {
        final cardinfo = await _firebaseFirestore
            .collection("FlashCards")
            .add(cardData);

        if (state is LoadedState) {
          final currentCards = (state as LoadedState).query;
          final newCard = FlashCardModel(
            id: cardinfo.id,
            question: event.answer,
            answer: event.answer,
          );

          final updatedQueryCard = [...currentCards, newCard];

          emit(LoadedState(updatedQueryCard));
        }
      } catch (error) {
        debugPrint(error.toString());
      }
    } else {
      debugPrint("Question or Answer might be empty");
    }
  }
}
