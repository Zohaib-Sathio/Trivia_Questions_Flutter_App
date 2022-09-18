import 'package:flutter/material.dart';

class questionButton extends StatefulWidget {
  
  final int noOfQuestions;

  const questionButton({super.key, required this.noOfQuestions});

  @override
  State<questionButton> createState() => _questionButtonState();
}

class _questionButtonState extends State<questionButton> {
  get noOfQuestions => this.noOfQuestions;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: (noOfQuestions == 5) ? Colors.greenAccent : Colors.grey[900],
      ),
      child: Center(
        child: Text('$noOfQuestions',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
