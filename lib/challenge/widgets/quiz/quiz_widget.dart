import 'package:dev_quiz/challenge/widgets/answer/answer_widget.dart';
import 'package:dev_quiz/core/app_text_styles.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatelessWidget {
  const QuizWidget({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            title,
            style: AppTextStyles.heading,
          ),
          SizedBox(height: 24),
          AnswerWidget(
            isRight: true,
            isSelected: true,
            title: "Kit de desenvolvimento de interface de usuário",
          ),
          AnswerWidget(
            title:
                "Possibilita a criação de aplicativos compilados nativamente",
          ),
          AnswerWidget(
            isRight: false,
            isSelected: true,
            title: "Acho que é uma marca de café do Himalaia",
          ),
          AnswerWidget(
            title: "Possibilita a criação de desktops que são muito incríveis",
          ),
        ],
      ),
    );
  }
}
