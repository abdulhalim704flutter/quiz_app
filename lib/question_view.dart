import 'package:flutter/material.dart';
import 'package:quizprojectsir/quiz_model.dart';

class QuestionView extends StatelessWidget {
  final int index;
  final QuizModel quizModel;
  final Function(String) onSubmit;
  const QuestionView({
    super.key,
    required this.index,
    required this.quizModel,
    required this.onSubmit,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$index. ${quizModel.question}',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          for (int i = 0; i < quizModel.option.length; i++)
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Row(
                children: [
                  Radio(
                      value: quizModel.option[i],
                      groupValue: quizModel.givenAnswer,
                      onChanged: (value){
                        onSubmit(value!);
                      }
                  ),
                  Text('${quizModel.option[i]}')
                ],
              ),
            )
        ],
      ),
    );
  }
}
