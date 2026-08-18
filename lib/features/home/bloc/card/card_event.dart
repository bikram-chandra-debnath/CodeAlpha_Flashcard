import 'package:equatable/equatable.dart';

abstract class CardEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class CardFlipEvent extends CardEvent {}

class CardNextEvent extends CardEvent {
  final int totalCards;
  CardNextEvent({required this.totalCards});
}

class CardPreviousEvent extends CardEvent {}

class DeleteCard extends CardEvent {
  final int index;

  DeleteCard(this.index);
}
