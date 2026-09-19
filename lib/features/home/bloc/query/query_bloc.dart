import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flashcard/features/home/bloc/query/query_event.dart';
import 'package:flashcard/features/home/bloc/query/query_state.dart';
import 'package:flashcard/features/home/data/models/flash_card_model.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class QueryBloc extends Bloc<QueryEvent, QueryState> {
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  QueryBloc() : super(QueryInitialState()) {
    on<FechQueryEvent>(_onFechQueryEvent);
  }

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
}
