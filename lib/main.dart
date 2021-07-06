import 'package:destination/question_bank.dart';
import 'package:destination/question_model.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  QuestionAndAnswer questionAndAnswer = QuestionAndAnswer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 6,
                child: Center(
                  child: Text(
                    questionAndAnswer.getQuestionText(),
                    style: TextStyle(fontSize: 18.0),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Visibility(
                  visible: questionAndAnswer.showVisible(),
                  // ignore: deprecated_member_use
                  child: FlatButton(
                    onPressed: () {
                      setState(() {
                        questionAndAnswer.showVisible();
                        questionAndAnswer.nextStape(1);
                      });
                    },
                    color: Colors.red,
                    child: Text(
                      questionAndAnswer.getQuestionAnsOne(),
                      style: TextStyle(fontSize: 18.0, color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Expanded(
                flex: 1,
                // ignore: deprecated_member_use
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      questionAndAnswer.nextStape(2);
                    });
                  },
                  color: Colors.blueAccent,
                  child: Text(
                    questionAndAnswer.getQuestionAnsTwo(),
                    style: TextStyle(fontSize: 18.0, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
