import 'package:cloud_firestore/cloud_firestore.dart';

class FlashCardModel {
  final int id;
  final String question;
  final String answer;

  const FlashCardModel({
    required this.id,
    required this.question,
    required this.answer,
  });


  factory FlashCardModel.fromMap(Map<String, dynamic> map) {
    return FlashCardModel(
      id: map['id'] ?? 0,
      question: map['question'] ?? '',
      answer: map['answer'] ?? '',
    );
  }

  
  factory FlashCardModel.fromDocument(DocumentSnapshot doc) {
    final map = doc.data() as Map<String, dynamic>? ?? {};
    return FlashCardModel.fromMap(map);
  }

  
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'question': question,
      'answer': answer,
    };
  }
}


