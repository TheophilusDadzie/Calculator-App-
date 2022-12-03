import 'package:calculator/utils/calculator_functions.dart';
import 'package:calculator/utils/margins/y_margin.dart';
import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  final CalculatorFunctions calculatorFunctions = CalculatorFunctions();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //SafeArea => Column => [Text, Text, [Row => [CustomButton]]]
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              //1st Text
              Text(
                calculatorFunctions.expression,
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
                calculatorFunctions.result,
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomButton(
                    buttonText: 'C',
                    buttonColor: Colors.grey,
                    textColor: Colors.white,
                    onPressed: () {
                      setState(() {
                        calculatorFunctions.performButtonAction('C');
                      });
                    },
                  ),

                  // 2 button
                  CustomButton(
                    buttonText: '⌫',
                    buttonColor: Colors.grey,
                    textColor: Colors.white,
                    onPressed: () {
                      setState(() {
                        calculatorFunctions.performButtonAction('⌫');
                      });
                    },
                  ),

                  // 3 button
                  CustomButton(
                    buttonText: '%',
                    buttonColor: Colors.grey,
                    textColor: Colors.white,
                    onPressed: () {
                      setState(() {
                        calculatorFunctions.performButtonAction('%');
                      });
                    },
                  ),

                  // 4 button
                  CustomButton(
                    buttonText: '/',
                    buttonColor: Colors.orange,
                    textColor: Colors.white,
                    onPressed: () {
                      setState(() {
                        calculatorFunctions.performButtonAction('/');
                      });
                    },
                  ),
                ],
              ),

              // SizeBox Section
              const YMargin(
                20,
              ),
              // Row Section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomButton(
                    buttonText: '7',
                    buttonColor: Colors.white12,
                    textColor: Colors.white,
                    onPressed: () {
                      setState(() {
                        calculatorFunctions.performButtonAction('7');
                      });
                    },
                  ),

                  // 2 button
                  CustomButton(
                    buttonText: '8',
                    buttonColor: Colors.white12,
                    textColor: Colors.white,
                    onPressed: () {
                      setState(() {
                        calculatorFunctions.performButtonAction('8');
                      });
                    },
                  ),

                  // 3 button
                  CustomButton(
                    buttonText: '9',
                    buttonColor: Colors.white12,
                    textColor: Colors.white,
                    onPressed: () {
                      setState(() {
                        calculatorFunctions.performButtonAction('9');
                      });
                    },
                  ),

                  // 4 button
                  CustomButton(
                    buttonText: '*',
                    buttonColor: Colors.orange,
                    textColor: Colors.white,
                    onPressed: () {
                      setState(() {
                        calculatorFunctions.performButtonAction('*');
                      });
                    },
                  ),
                ],
              ),

              // SizeBox Section
              const YMargin(
                20,
              ),
              // Row Section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomButton(
                    buttonText: '4',
                    buttonColor: Colors.white12,
                    textColor: Colors.white,
                    onPressed: () {
                      setState(() {
                        calculatorFunctions.performButtonAction('4');
                      });
                    },
                  ),

                  // 2 button
                  CustomButton(
                    buttonText: '5',
                    buttonColor: Colors.white12,
                    textColor: Colors.white,
                    onPressed: () {
                      setState(() {
                        calculatorFunctions.performButtonAction('5');
                      });
                    },
                  ),

                  // 3 button
                  CustomButton(
                    buttonText: '6',
                    buttonColor: Colors.white12,
                    textColor: Colors.white,
                    onPressed: () {
                      setState(() {
                        calculatorFunctions.performButtonAction('6');
                      });
                    },
                  ),

                  // 4 button
                  CustomButton(
                    buttonText: '-',
                    buttonColor: Colors.orange,
                    textColor: Colors.white,
                    onPressed: () {
                      setState(() {
                        calculatorFunctions.performButtonAction('-');
                      });
                    },
                  ),
                ],
              ),

              // SizeBox Section
              const YMargin(
                20,
              ),
              // Row Section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomButton(
                    buttonText: '1',
                    buttonColor: Colors.white12,
                    textColor: Colors.white,
                    onPressed: () {
                      setState(() {
                        calculatorFunctions.performButtonAction('1');
                      });
                    },
                  ),

                  // 2 button
                  CustomButton(
                    buttonText: '2',
                    buttonColor: Colors.white12,
                    textColor: Colors.white,
                    onPressed: () {
                      setState(() {
                        calculatorFunctions.performButtonAction('2');
                      });
                    },
                  ),

                  // 3 button
                  CustomButton(
                    buttonText: '3',
                    buttonColor: Colors.white12,
                    textColor: Colors.white,
                    onPressed: () {
                      setState(() {
                        calculatorFunctions.performButtonAction('3');
                      });
                    },
                  ),

                  // 4 button
                  CustomButton(
                    buttonText: '+',
                    buttonColor: Colors.orange,
                    textColor: Colors.white,
                    onPressed: () {
                      setState(() {
                        calculatorFunctions.performButtonAction('+');
                      });
                    },
                  ),
                ],
              ),

              // SizeBox Section
              const YMargin(
                20,
              ),
              // Row Section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomButton(
                    buttonText: '0',
                    buttonColor: Colors.white12,
                    textColor: Colors.white,
                    onPressed: () {
                      setState(() {
                        calculatorFunctions.performButtonAction('0');
                      });
                    },
                  ),

                  // 2 button
                  CustomButton(
                    buttonText: '.',
                    buttonColor: Colors.white12,
                    textColor: Colors.white,
                    onPressed: () {
                      setState(() {
                        calculatorFunctions.performButtonAction('.');
                      });
                    },
                  ),

                  // 3 button
                  CustomButton(
                    buttonText: '00',
                    buttonColor: Colors.white12,
                    textColor: Colors.white,
                    onPressed: () {
                      setState(() {
                        calculatorFunctions.performButtonAction('00');
                      });
                    },
                  ),

                  // 4 button
                  CustomButton(
                    buttonText: '=',
                    buttonColor: Colors.orange,
                    textColor: Colors.white,
                    onPressed: () {
                      setState(() {
                        calculatorFunctions.performButtonAction('=');
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
