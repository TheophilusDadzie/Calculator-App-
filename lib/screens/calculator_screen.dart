import 'package:calculator/utils/margins/y_margin.dart';
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
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            //1st Text
            Text(
              '0',
              style: TextStyle(
                color: Colors.white,
                fontSize: 50,
              ),
            ),

            const YMargin(
              20,
            ),
            // 2nd Text
            Text(
              '0',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),

            // SizeBox Section
            const YMargin(
              20,
            ),
            // Row Section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButton(
                  buttonText: 'C',
                  buttonColor: Colors.grey,
                  textColor: Colors.white,
                  onPressed: () {},
                ),

                // 2 button
                CustomButton(
                  buttonText: 'del',
                  buttonColor: Colors.grey,
                  textColor: Colors.white,
                  onPressed: () {},
                ),

                // 3 button
                CustomButton(
                  buttonText: '%',
                  buttonColor: Colors.grey,
                  textColor: Colors.white,
                  onPressed: () {},
                ),

                // 4 button
                CustomButton(
                  buttonText: '/',
                  buttonColor: Colors.orange,
                  textColor: Colors.white,
                  onPressed: () {},
                ),
              ],
            ),

            // SizeBox Section
            const YMargin(
              20,
            ),
            // Row Section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButton(
                  buttonText: '7',
                  buttonColor: Colors.white12,
                  textColor: Colors.white,
                  onPressed: () {},
                ),

                // 2 button
                CustomButton(
                  buttonText: '8',
                  buttonColor: Colors.white12,
                  textColor: Colors.white,
                  onPressed: () {},
                ),

                // 3 button
                CustomButton(
                  buttonText: '9',
                  buttonColor: Colors.white12,
                  textColor: Colors.white,
                  onPressed: () {},
                ),

                // 4 button
                CustomButton(
                  buttonText: '*',
                  buttonColor: Colors.orange,
                  textColor: Colors.white,
                  onPressed: () {},
                ),
              ],
            ),

            // SizeBox Section
            const YMargin(
              20,
            ),
            // Row Section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButton(
                  buttonText: '4',
                  buttonColor: Colors.white12,
                  textColor: Colors.white,
                  onPressed: () {},
                ),

                // 2 button
                CustomButton(
                  buttonText: '5',
                  buttonColor: Colors.white12,
                  textColor: Colors.white,
                  onPressed: () {},
                ),

                // 3 button
                CustomButton(
                  buttonText: '6',
                  buttonColor: Colors.white12,
                  textColor: Colors.white,
                  onPressed: () {},
                ),

                // 4 button
                CustomButton(
                  buttonText: '-',
                  buttonColor: Colors.orange,
                  textColor: Colors.white,
                  onPressed: () {},
                ),
              ],
            ),

            // SizeBox Section
            const YMargin(
              20,
            ),
            // Row Section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButton(
                  buttonText: '1',
                  buttonColor: Colors.white12,
                  textColor: Colors.white,
                  onPressed: () {},
                ),

                // 2 button
                CustomButton(
                  buttonText: '2',
                  buttonColor: Colors.white12,
                  textColor: Colors.white,
                  onPressed: () {},
                ),

                // 3 button
                CustomButton(
                  buttonText: '3',
                  buttonColor: Colors.white12,
                  textColor: Colors.white,
                  onPressed: () {},
                ),

                // 4 button
                CustomButton(
                  buttonText: '+',
                  buttonColor: Colors.orange,
                  textColor: Colors.white,
                  onPressed: () {},
                ),
              ],
            ),

            // SizeBox Section
            const YMargin(
              20,
            ),
            // Row Section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButton(
                  buttonText: '0',
                  buttonColor: Colors.white12,
                  textColor: Colors.white,
                  onPressed: () {},
                ),

                // 2 button
                CustomButton(
                  buttonText: '.',
                  buttonColor: Colors.white12,
                  textColor: Colors.white,
                  onPressed: () {},
                ),

                // 3 button
                CustomButton(
                  buttonText: '00',
                  buttonColor: Colors.white12,
                  textColor: Colors.white,
                  onPressed: () {},
                ),

                // 4 button
                CustomButton(
                  buttonText: '=',
                  buttonColor: Colors.orange,
                  textColor: Colors.white,
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  CustomButton({
    super.key,
    required this.buttonText,
    required this.buttonColor,
    required this.textColor,
    required this.onPressed,
  });

  // CustomButton Sections
  final String buttonText;
  final Color buttonColor;
  final Color textColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    // MediaQuary Section
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.height * 0.08,
      height: size.height * 0.08,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: buttonColor,
          shape: CircleBorder(),
        ),
        child: Text(
          buttonText,
          style: TextStyle(
            color: textColor,
            fontSize: 30,
          ),
        ),
      ),
    );
    ;
  }
}
