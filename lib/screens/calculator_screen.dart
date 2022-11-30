import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //SafeArea => Column => [Text, Text, [Row => [CustomButton]]]
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            //1st Text
            Text(
              '0',
              style: TextStyle(
                color: Colors.white,
              ),
            ),

            // 2nd Text
            Text(
              '0',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
