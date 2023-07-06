import 'package:flutter/material.dart';
import 'package:quiz_app/components/answer_button.dart';
import 'package:quiz_app/components/text_component.dart';
import 'package:quiz_app/screens/result_screen.dart';
import 'package:quiz_app/utils/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});
  static const String routeName = 'qeustions';

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  int index = 1;
  int result = 0;
  var currentQuestion = questions[0];
  @override
  Widget build(BuildContext context) {
    if (index <= 6) {
      currentQuestion = questions[index - 1];
    }
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: TextComponent(data: currentQuestion.text, size: 25),
              ),
              const SizedBox(
                height: 19,
              ),
              ...currentQuestion.getShuffledAsewrs().map((item) {
                return AnswerButton(
                    answerText: item,
                    onTap: () {
                      if (item == currentQuestion.answers[0]) {
                        result++;
                      }

                      print(result);
                      print('object');

                      index++;
                      print(index);
                      if (index > questions.length) {
                        Result finalResult = Result(result: result);
                        Navigator.pushNamed(context, ResultScreen.routeName,
                            arguments: finalResult);
                      } else {
                        setState(() {});
                      }
                    }

                    /*{
                      if (item == currentQuestion.answers[0]) {
                        quizResult.result++;
                      }
                      print(quizResult.result);
                      if (index > questions.length) {

                        Navigator.pushNamed(context, ResultScreen.routeName,
                            arguments: quizResult);
                      } else {
                        setState(() {});
                      }
                    }
                    */
                    );
              })
            ],
          ),
        ),
      ),
    );
  }
}

class Result {
  int result;
  Result({required this.result});
}
