import 'package:flutter/material.dart';
import 'package:quizprojectsir/quiz_home_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Welcome!',
              style: Theme.of(context).textTheme.displayLarge,
            ),
            SizedBox(height: 30.0,),
            ElevatedButton(
                onPressed: () => Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => QuizHomePage())),
                child: Text('Start Quiz',style: Theme.of(context).textTheme.titleLarge,))
          ],
        ),
      ),
    );
  }
}
