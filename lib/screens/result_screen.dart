import 'package:flutter/material.dart';
import 'package:quiz_app/components/text_component.dart';
import 'package:quiz_app/screens/questions_screen.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  static const String routeName = 'result';
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Result;
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextComponent(
              data: "Your Result is ${args.result} out of 6", size: 24),
          const SizedBox(
            height: 10,
          ),
          args.result == 6
              ? TextComponent(data: "Nice Work !!", size: 24)
              : TextComponent(data: "Try Again", size: 24),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.black87)),
              onPressed: () {
                Navigator.pushNamed(context, QuestionsScreen.routeName);
              },
              child: TextComponent(data: 'Go to quiz again >', size: 22))
        ],
      )),
    );
  }
}
