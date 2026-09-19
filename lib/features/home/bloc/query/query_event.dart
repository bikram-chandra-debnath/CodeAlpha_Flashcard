import 'package:equatable/equatable.dart';

class QueryEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class FechQueryEvent extends QueryEvent {}

class DeleteCardEvent extends QueryEvent {
  final String index;
  DeleteCardEvent(this.index);

  @override
  List<Object> get props => [index];
}
