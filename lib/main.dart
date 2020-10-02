import 'package:flutter/material.dart';
import 'question.dart';

void main() {
  runApp(Quizzler());
}

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Widget> scoreKeeper = [];
  List<Question> questions = [
    Question(q: 'You can lead a cow down stairs but not up stairs.', a: false),
    Question(
        q: 'Approximatively one quarter of human bones are in the feet.',
        a: true),
    Question(q: 'A slug\'s blood is green.', a: true)
  ];

  int progressIndex = 0;

  void addScore(answer) {
    if (answer) {
      scoreKeeper.add(
        Icon(
          Icons.check,
          color: Colors.green,
        ),
      );
    } else {
      scoreKeeper.add(
        Icon(
          Icons.close,
          color: Colors.red,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Text(
                questions[progressIndex].text,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.lightGreen,
              child: Text(
                'True',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                setState(() {
                  addScore(questions[progressIndex].answer == true);
                  progressIndex++;
                });
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.red,
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                setState(() {
                  addScore(questions[progressIndex].answer == false);
                  progressIndex++;
                });
              },
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Row(
            children: scoreKeeper,
          ),
        ),
      ],
    );
  }
}
