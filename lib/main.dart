import 'package:flutter/material.dart';
import 'package:quizz_app/question.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Question index
    int qIndex = 0;

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

    //Answer pressed function

    void ProcessAnswer(Question q, String a){
      if(q.rightAnswer == a){
        print("You got it right");
        qIndex++;
      }
      else{
        print("Wrong answer");
      }
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quizz App'),
          elevation: 0,

        ),
        body: Column(
          children: [
            Center(
                child: Padding(
                  child: Text(
                    questions[0].question,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  padding: EdgeInsets.all(50),
            )),
            RaisedButton(
              child: Text(questions[0].answers[0]),
              onPressed: ()=>{
                ProcessAnswer(questions[0], questions[0].answers[0])
              },
            ),
            RaisedButton(
              child: Text(questions[0].answers[1]),
              onPressed: ()=>{
                ProcessAnswer(questions[0], questions[0].answers[1])
              },
            ),
            RaisedButton(
              child: Text(questions[0].answers[2]),
              onPressed: ()=>{
                ProcessAnswer(questions[0], questions[0].answers[2])
              },
            ),
          ],
        ),
      ),
    );
  }
}
