import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quizprojectsir/question_view.dart';
import 'package:quizprojectsir/quiz_model.dart';
import 'package:quizprojectsir/result_page.dart';

class QuizHomePage extends StatefulWidget {
  const QuizHomePage({super.key});

  @override
  State<QuizHomePage> createState() => _QuizHomePageState();
}

class _QuizHomePageState extends State<QuizHomePage> {
  late Timer timer;
  int count = 15;
  int total = 0;

  @override
  void initState() {
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (count > 0) {
          count--;
        } else {
          timer.cancel();
            for (final quizModel in quizList) {
              if (quizModel.rightAnswer == quizModel.givenAnswer) {
                total++;
              }
            }
            for (final quizModel in quizList) {
              quizModel.givenAnswer = '';
            }
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => ResultPage(result: total,)));
        }
        });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz App'),
        centerTitle: true,
        actions: [
          ElevatedButton(onPressed: _finishQuiz,
              child: const Text('FINISH'))
        ],
      ),
      body: Column(
        children: [
          Text(
            '$count',
            style: Theme.of(context).textTheme.displayMedium,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: quizList.length,
                itemBuilder: (context, index) {
                  final quizModel = quizList[index];
                  return QuestionView(
                    index: index + 1,
                    quizModel: quizModel,
                    onSubmit: (value) {
                      setState(() {
                        quizList[index].givenAnswer = value;
                      });
                    },
                  );
                }),
          ),
        ],
      ),
    );
  }
  void _finishQuiz() {
    for (final quizModel in quizList) {
      if (quizModel.rightAnswer == quizModel.givenAnswer) {
        total++;
      }
    }
    for (final quizModel in quizList) {
      quizModel.givenAnswer = '';
    }
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => ResultPage(result: total,)));
  }
}
