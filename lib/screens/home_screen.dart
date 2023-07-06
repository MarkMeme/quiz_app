import 'package:flutter/material.dart';
import 'package:quiz_app/components/text_component.dart';
import 'package:quiz_app/screens/questions_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const String routeName = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/quiz-logo.png',
              width: 250,
            ),
            const SizedBox(
              height: 18,
            ),
            TextComponent(data: 'Learn Flutter easy way', size: 24),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.black87)),
                onPressed: () {
                  Navigator.pushNamed(context, QuestionsScreen.routeName);
                },
                child: TextComponent(data: 'Go to QUIZ', size: 22))
          ],
        ),
      ),
    );
  }
}
