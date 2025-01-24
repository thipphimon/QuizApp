import 'package:flutter/material.dart';
import 'package:myapp/data/quizz.dart';
import 'answer_button.dart';


class QuestionsScreen extends StatelessWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionScreenState();
  }
}

Class _QuestionsScreenState extends State<QuestionsScreen> {
  int currentQuestionIndex = 0;
  final List<String> selectedAnswers = [];

  void answerQuestion(String selectedAnswers) {
    setState(() {
      selectedAnswers.add(selectedAnswers);
      if (currentQuestionIndex < questions.length - 1) {
        currentQuestionIndex++;
      } else {
      }
    }
    )
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.deepPurple, Colors.purple],
            ),
          ),
          child: SizedBox(
            child: Container(
              margin: const EdgeInsets.all(40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    currentQuestion.question,
                    style: GoogleFonts.lato(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ) 
                  const SizedBox(height: 30,)
                  ...currentQuestion.answers.map((answer){
                    return AnswerButton(answer);
                  })
                ],
              ),
            ),
          ),
        )
      )
    )
  }
}
  