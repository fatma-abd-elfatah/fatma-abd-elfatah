import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:iti_quizz_app/Screens/opening_screen.dart';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 206, 232, 245),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 1800,
          ),
          Container(
            child: RichText(
              text: TextSpan(
                text: 'Hello ',
                style: TextStyle(
                    color: Color.fromARGB(255, 243, 114, 39), fontSize: 30),
                children: const <TextSpan>[
                  TextSpan(
                      text: 'Fatma',
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold)),
                  TextSpan(text: ' your score is'),
                  TextSpan(
                      text: ' 18/20 ',
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const OpeningScreen()),
                );
              },
              child: const Text(
                "Reset Quiz",
                style: TextStyle(
                  fontSize: 16,
                ),
              )),
        ],
      ),
    );
  }
}
