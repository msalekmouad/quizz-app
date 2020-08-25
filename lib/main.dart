import 'package:flutter/material.dart';
import 'package:quizz_app/components/AnswerWidget.dart';
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

class _MyAppState extends State<MyApp> {
  //Question index
  int _qIndex = 0;

  //Hard coding Quizz questions
  static Question q1 = Question(
      question: "Whats the biggest planet on solar system ?",
      answers: ["Sun", "Jupiter", "Earth"],
      rightAnswer: "Sun");
  static Question q2 = Question(
      question: "Whats the language spoken in Germany",
      answers: ["Russian", "Arabic", "Dutch"],
      rightAnswer: "Dutch");
  static Question q3 = Question(
      question: "Whats the population of Earth ?",
      answers: ["10 Billion", "7.8 Billion", "5 Billion"],
      rightAnswer: "7.8 Billion");

  //Questions List
  var questions = [q1, q2, q3];

  //Answer pressed function
  void _ProcessAnswer() {
    setState(() {
      _qIndex = _qIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quizz App'),
          elevation: 0,
          backgroundColor: Colors.teal[900],
        ),
        body: _qIndex < questions.length
            ? Column(
                children: [
                  QuestionWidget(questions[_qIndex].question),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        ...questions[_qIndex].answers.map((e) {
                          return AnswerWidget(_ProcessAnswer, e);
                        }).toList()
                      ],
                    ),
                  )
                ],
              )
            : Center(
                child: Text(
                  "Sorry No more questions !",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
        backgroundColor: Colors.grey[200],
      ),
    );
  }
}
