import 'package:flutter/material.dart';

class loginpage extends StatelessWidget {
  const loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
      child: Text("welcome", style: TextStyle(
        fontSize: 40,
        color: Colors.brown,
        fontWeight: FontWeight.bold
      ),)),
    );
  }
} 