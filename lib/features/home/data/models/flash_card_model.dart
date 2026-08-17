
class FlashCardModel {
  final int id;
  final String question;
  final String answer;
  final ReactionModel reactions;

  const FlashCardModel({
    required this.id,
    required this.question,
    required this.answer,
    required this.reactions,
  });

  factory FlashCardModel.fromMap(Map<String, dynamic> map) {
    return FlashCardModel(
      id: map['id'] ?? 0,
      question: map['question'] ?? '',
      answer: map['answer'] ?? '',
      reactions: ReactionModel.fromMap(
        map['reactions'] ?? {},
      ),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'question': question,
      'answer': answer,
      'reactions': reactions.toMap(),
    };
  }
}

class ReactionModel {
  final int like;
  final int love;
  final int helpful;

  const ReactionModel({
    required this.like,
    required this.love,
    required this.helpful,
  });

  factory ReactionModel.fromMap(Map<String, dynamic> map) {
    return ReactionModel(
      like: map['like'] ?? 0,
      love: map['love'] ?? 0,
      helpful: map['helpful'] ?? 0,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'like': like,
      'love': love,
      'helpful': helpful,
    };
  }
}