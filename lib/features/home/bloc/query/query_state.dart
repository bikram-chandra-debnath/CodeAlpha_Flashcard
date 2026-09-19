import 'package:equatable/equatable.dart';
import 'package:flashcard/features/home/data/models/flash_card_model.dart';

class QueryState extends Equatable {
  const QueryState();

  @override
  List<Object?> get props => [];
}

class QueryInitialState extends QueryState {}

class LoadingState extends QueryState {}

class LoadedState extends QueryState {
  final List<FlashCardModel> query;
  const LoadedState(this.query);

  @override
  List<Object?> get props => [query];
}

class ErroeState extends QueryState {
  final String message;
  const ErroeState(this.message);

  @override
  List<Object?> get props => [message];
}
