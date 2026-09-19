import 'package:equatable/equatable.dart';

class QueryEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class FechQueryEvent extends QueryEvent {}

class DeleteCardEvent extends QueryEvent {
  final String id;
  DeleteCardEvent(this.id);

  @override
  List<Object> get props => [id];
}

class AddCardEvent extends QueryEvent {
  final String id, question, answer;
  AddCardEvent(this.id, this.question, this.answer);

  @override
  List<Object> get props => [id, question, answer];
}
