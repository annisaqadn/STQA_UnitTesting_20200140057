import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Calculator {
  num sumTwoNumbers(num a, num b) {
    return a + b;
  }
}

class MyApp extends StatelessWidget {
  final Calculator calculator = Calculator();
  final TextEditingController firstNumberController = TextEditingController();
  final TextEditingController secondNumberController = TextEditingController();
  final TextEditingController resultController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Calculator App'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: firstNumberController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Enter first number'),
              ),
              TextField(
                controller: secondNumberController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Enter second number'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  calculateSum();
                },
                child: Text('Calculate Sum'),
              ),
              SizedBox(height: 20),
              TextField(
                controller: resultController,
                readOnly: true,
                decoration: InputDecoration(labelText: 'Result'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void calculateSum() {
    try {
      final num firstNumber = num.parse(firstNumberController.text);
      final num secondNumber = num.parse(secondNumberController.text);
      final num result = calculator.sumTwoNumbers(firstNumber, secondNumber);
      resultController.text = result.toString();
    } catch (e) {
      resultController.text = 'Error';
    }
  }
}
