import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Screens/question_screen.dart';

class CategoryContainer extends StatelessWidget {
  final String? testName;
  final Function()? onTabFunction;
  const CategoryContainer({this.onTabFunction, this.testName});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTabFunction,
        child: Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 4,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50)),
                color: Color.fromARGB(255, 243, 114, 39)),
            child: Text(
              testName!,
              style: GoogleFonts.kalam(
                  color: Color.fromARGB(255, 206, 232, 245), fontSize: 30),
            )));
  }
}
