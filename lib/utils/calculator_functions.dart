import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorFunctions {
  // Define the expression and the result variable
  String expression = "";
  String result = "";
  // Create a function that helps handle whatever button is clicked and also evaluates the expression
  void performButtonAction(String buttonText) {
    if (buttonText == 'C') {
      expression = '';
      result = '';
    } else if (buttonText == '⌫') {
      if (expression.isEmpty) {
        return;
      }
      expression = expression.substring(0, expression.length - 1);
    } else if (buttonText == '=') {
      try {
        Parser parser = Parser();
        Expression exp = parser.parse(expression);
        ContextModel context = ContextModel();
        final EvaluatedExpression = exp
            .evaluate(
              EvaluationType.REAL,
              context,
            )
            .toString();
        // result =
        //     '${isInteger(evaluatedExpression) ? (evaluatedExpression as num).ceil() : '$evaluatedExpression'}';
        // expression = result;
        result = EvaluatedExpression;
        expression = EvaluatedExpression;
      } catch (e) {
        result = 'Error $e';
      }
    } else {
      expression += buttonText;
    }
  }

  // Create a function that determines if a number is an interger or not
  bool isInteger(num value) => value is int || value == value.roundToDouble();
}
