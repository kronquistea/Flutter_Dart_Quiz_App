import 'package:flutter/material.dart';
import 'package:quiz_app/quiz_home.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = AlignmentGeometry.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  const GradientContainer.purple({super.key}) 
  : color1 = const Color.fromARGB(255, 57, 26, 112), 
    color2 = const Color.fromARGB(255, 170, 199, 174);

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            color1,
            color2,
          ],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: QuizHome(),
      ),
    );
  }
}