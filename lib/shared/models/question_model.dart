import 'dart:convert';
import 'package:collection/collection.dart';

import 'package:dev_quiz/shared/models/answer_model.dart';

class QuestionModel {
  QuestionModel({required this.title, required this.answers})
      : assert(answers.length == 4);

  final String title;
  final List<AnswerModel> answers;

  QuestionModel copyWith({String? title, List<AnswerModel>? answers}) {
    return QuestionModel(
      title: title ?? this.title,
      answers: answers ?? this.answers,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'answers': answers.map((x) => x.toMap()).toList(),
    };
  }

  factory QuestionModel.fromMap(Map<String, dynamic> map) {
    return QuestionModel(
      title: map['title'],
      answers: List<AnswerModel>.from(
        map['answers']?.map(
          (x) => AnswerModel.fromMap(x),
        ),
      ),
    );
  }

  String toJson() {
    return json.encode(toMap());
  }

  factory QuestionModel.fromJson(String source) {
    return QuestionModel.fromMap(json.decode(source));
  }

  @override
  String toString() {
    return 'QuestionModel(title: $title, answers: $answers)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    final listEquals = const DeepCollectionEquality().equals;

    return other is QuestionModel &&
        other.title == title &&
        listEquals(other.answers, answers);
  }

  @override
  int get hashCode {
    return title.hashCode ^ answers.hashCode;
  }
}
