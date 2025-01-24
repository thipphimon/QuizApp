import 'package:flutter/material.dart';
import 'package:myapp/questions_screen.dart';

class AnswerButton extends StatelessWidget {
  const QuestionsScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionsScreen> {
  int currentQuestionIndex = 0;


}

        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 58, 0, 97),
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        ),
        child: Text(
          answerText,
          style: const TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}