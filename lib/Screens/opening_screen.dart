import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login_screen.dart';

class OpeningScreen extends StatelessWidget {
  const OpeningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                      "../../images/4750d15173df2751f8352621e8855aa6.jpg"),
                  fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.27,
              ),

              Text("Quiz App",
                  style: GoogleFonts.pacifico(
                    color: const Color.fromARGB(255, 31, 18, 12),
                    fontSize: 30,
                  )),
              const SizedBox(
                height: 12,
              ),
              Text("Welcome to our App",
                  style: GoogleFonts.dancingScript(
                    color: const Color.fromARGB(255, 31, 18, 12),
                    fontSize: 40,
                  )),

              const SizedBox(
                height: 70,
              ),
              //Spacer(),
              Container(
                width: double.infinity,
                margin:
                    const EdgeInsets.symmetric(vertical: 28, horizontal: 26),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                    child: const Text(
                      "Start",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
