import 'package:flutter/material.dart';
import 'package:quizprojectsir/quiz_home_page.dart';
import 'package:quizprojectsir/quiz_model.dart';

class ResultPage extends StatelessWidget {
  final int result;
  const ResultPage({super.key, required this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz Result'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '$result',
              style: Theme.of(context).textTheme.displayLarge,
            ),
            SizedBox(height: 10.0,),
            Text(
              'Out of ${quizList.length}',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            SizedBox(height: 18.0,),
            ElevatedButton(
                onPressed: () => Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => QuizHomePage())),
                child: Text('Start Again',style: Theme.of(context).textTheme.titleLarge,))
          ],
        ),
      ),
    );
  }
}
