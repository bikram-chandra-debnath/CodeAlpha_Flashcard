class FlashCardModel {
  final String id;
  final String question;
  final String answer;

  FlashCardModel({
    required this.id,
    required this.question,
    required this.answer,
  });

  factory FlashCardModel.fromFirestore(String id, Map<String, dynamic> data) {
    return FlashCardModel(
      id: id,
      question: data['question'] ?? '',
      answer: data['answer'] ?? '',
    );
  }
}
