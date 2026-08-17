import 'package:equatable/equatable.dart';

class CardState extends Equatable {
  final bool isFliped;
  final int currentPage;

  const CardState({required this.isFliped, required this.currentPage});

  CardState copyWith({bool? isFliped, int? currentPage}) {
    return CardState(
      isFliped: isFliped ?? this.isFliped,
      currentPage: currentPage ?? this.currentPage,
    );
  }

  static CardState initialState() {
    return CardState(isFliped: false, currentPage: 0);
  }

  @override
  List<Object?> get props => [isFliped, currentPage];
}
