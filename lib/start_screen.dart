import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/quiz-logo.png'),
          SizedBox(
            height: 80,
          ),
          Text(
            "Learn Flutter the Fun Way",
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          SizedBox(
            height: 30,
          ),
          OutlinedButton(
            onPressed: () {},
            child: Text("Start Quiz"),
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white
            ),
          ),
        ],
      ),
    );
  }
}
