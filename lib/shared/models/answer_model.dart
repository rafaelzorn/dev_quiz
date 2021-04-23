import 'dart:convert';

class AnswerModel {
  AnswerModel({required this.title, this.isRight = false});

  final String title;
  final bool isRight;

  AnswerModel copyWith({String? title, bool? isRight}) {
    return AnswerModel(
      title: title ?? this.title,
      isRight: isRight ?? this.isRight,
    );
  }

  Map<String, dynamic> toMap() {
    return {'title': title, 'isRight': isRight};
  }

  factory AnswerModel.fromMap(Map<String, dynamic> map) {
    return AnswerModel(title: map['title'], isRight: map['isRight'] ?? false);
  }

  String toJson() {
    return json.encode(toMap());
  }

  factory AnswerModel.fromJson(String source) {
    return AnswerModel.fromMap(json.decode(source));
  }

  @override
  String toString() {
    return 'AnswerModel(title: $title, isRight: $isRight)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    return other is AnswerModel &&
        other.title == title &&
        other.isRight == isRight;
  }

  @override
  int get hashCode {
    return title.hashCode ^ isRight.hashCode;
  }
}
