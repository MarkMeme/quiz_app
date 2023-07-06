import 'package:flutter/material.dart';
import 'package:quiz_app/components/text_component.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.black87)),
                onPressed: () {},
                child: TextComponent(data: 'Go to QUIZ', size: 22))
          ],
        ),
      ),
    );
  }
}
