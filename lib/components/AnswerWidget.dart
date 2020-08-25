
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizz_app/question.dart';

class AnswerWidget extends StatelessWidget {
  final Function answerHandler;
  final String answerText;
  AnswerWidget(this.answerHandler, this .answerText);

  @override
  Widget build(BuildContext context) {

    return Container(
      child: FlatButton(
        child: Text(answerText),
        color: Colors.teal,
        textColor: Colors.white,
        onPressed: answerHandler,
      ),
      width: double.infinity,
    );
  }
}
