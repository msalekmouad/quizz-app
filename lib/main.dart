import 'package:flutter/material.dart';
import 'package:quizz_app/components/QuestionWidget.dart';
import 'package:quizz_app/question.dart';

void main() => runApp(MyApp());

// ignore: must_be_immutable
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _MyAppState();
  }
}

class _MyAppState extends State<MyApp>{
  //Question index
  int _qIndex = 0;

  //Answer pressed function
  void _ProcessAnswer(Question q, String a) {
    if (q.rightAnswer == a) {
      print("You got it right");
      setState(() {
        _qIndex = _qIndex + 1;
      });
    } else {
      print("Wrong answer");
    }

  }

  @override
  Widget build(BuildContext context) {

    //Hard coding Quizz questions
    Question q1 = Question(
        question: "Whats the biggest planet on solar system ?",
        answers: ["Sun", "Jupiter", "Earth"],
        rightAnswer: "Sun");
    Question q2 = Question(
        question: "Whats the language spoken in Germany",
        answers: ["Russian", "Arabic", "Dutch"],
        rightAnswer: "Dutch");
    Question q3 = Question(
        question: "Whats the population of Earth ?",
        answers: ["10 Billion", "7.8 Billion", "5 Billion"],
        rightAnswer: "7.8 Billion");

    //Questions List
    var questions = [q1, q2, q3];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quizz App'),
          elevation: 0,
          backgroundColor: Colors.teal[900],
        ),
        body: Column(
          children: [
            QuestionWidget(questions[_qIndex].question),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  SizedBox(
                    child: FlatButton(
                      child: Text(questions[_qIndex].answers[0]),
                      color: Colors.teal,
                      textColor: Colors.white,
                      onPressed: () => {
                        _ProcessAnswer(questions[_qIndex], questions[_qIndex].answers[0])
                      },
                    ),
                    width: double.infinity,
                  ),
                  SizedBox(
                    child: FlatButton(
                      child: Text(questions[_qIndex].answers[1]),
                      color: Colors.teal,
                      textColor: Colors.white,
                      onPressed: () => {
                        _ProcessAnswer(questions[_qIndex], questions[_qIndex].answers[1])
                      },
                    ),
                    width: double.infinity,
                  ),
                  SizedBox(
                    child: FlatButton(
                      child: Text(questions[_qIndex].answers[2]),
                      color: Colors.teal,
                      textColor: Colors.white,
                      onPressed: () => {
                        _ProcessAnswer(questions[_qIndex], questions[_qIndex].answers[2])
                      },
                    ),
                    width: double.infinity,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
