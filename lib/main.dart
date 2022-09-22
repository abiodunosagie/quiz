import 'package:flutter/material.dart';

const kSubmitButtonTextStyle =
    TextStyle(fontWeight: FontWeight.w500, fontSize: 35, color: Colors.white);

void main() => runApp(const Quizzler());

class Quizzler extends StatelessWidget {
  const Quizzler({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  //Lists
  List<Widget> scoreKeeper = [];

  List<String> questions = [
    'You can lead a cow down stairs but not up stairs.',
    'Approximately one quarter of human are in the fet.',
    'A slug\'s blood is green.'
  ];
  int questionNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
            flex: 4,
            child: Center(
              child: Text(
                questions[questionNumber],
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
            )),
        Expanded(
            child: ElevatedButton(
          style: TextButton.styleFrom(
            backgroundColor: Colors.green,
          ),
          //This is where the true button is
          onPressed: () {},
          child: const Text(
            'True',
            style: kSubmitButtonTextStyle,
          ),
        )),
        const SizedBox(height: 30),
        Expanded(
            child: ElevatedButton(
          style: TextButton.styleFrom(
            backgroundColor: Colors.red,
          ),
          onPressed: () {},
          child: const Text(
            'False',
            style: kSubmitButtonTextStyle,
          ),
        )),
        Row(
          children: scoreKeeper,
        )
      ],
    );
  }
}
