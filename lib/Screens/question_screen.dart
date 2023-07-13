import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:iti_quizz_app/Screens/score_screen.dart';

class QuestionScreen extends StatelessWidget {
  const QuestionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 206, 232, 245),
      appBar: AppBar(
        title: Column(
          children: [const Text("Sport test"), Text("3/20")],
        ),
        centerTitle: true,
        titleTextStyle:
            TextStyle(color: Color.fromARGB(255, 206, 232, 245), fontSize: 25),
        actions: [Icon(Icons.book), Padding(padding: EdgeInsets.all(3))],
      ),
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 15,
          ),
          const Text(
            "Question",
            style: TextStyle(fontSize: 30, color: Colors.deepOrangeAccent),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            "In which country was the last World Cup held?",
            style: TextStyle(fontSize: 30, color: Colors.deepOrangeAccent),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            "Answers",
            style: TextStyle(fontSize: 30, color: Colors.deepOrangeAccent),
          ),
          const SizedBox(
            height: 15,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ScoreScreen()),
                );
              },
              child: const Text(
                "Egypt",
                style: TextStyle(
                  fontSize: 16,
                ),
              )),
          const SizedBox(
            height: 15,
          ),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ScoreScreen()),
                  );
                },
                child: const Text(
                  "Qatar",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                )),
          ),
          const SizedBox(
            height: 15,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ScoreScreen()),
                );
              },
              child: const Text(
                "Lebanon",
                style: TextStyle(
                  fontSize: 16,
                ),
              )),
          const SizedBox(
            height: 15,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ScoreScreen()),
                );
              },
              child: const Text(
                "Yemen",
                style: TextStyle(
                  fontSize: 16,
                ),
              )),
        ],
      ),
    );
  }
}
