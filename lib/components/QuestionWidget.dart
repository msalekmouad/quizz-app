import 'package:flutter/cupertino.dart';

class QuestionWidget extends StatelessWidget {

  final String questionText;
  QuestionWidget(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
          child: Text(
            questionText,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          padding: EdgeInsets.all(50),
        )
    );
  }
}
