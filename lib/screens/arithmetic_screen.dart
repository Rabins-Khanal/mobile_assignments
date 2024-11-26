import 'package:flutter/material.dart';

class ArithmeticScreen extends StatefulWidget {
  const ArithmeticScreen({Key? key}) : super(key: key);

  @override
  _ArithmeticScreenState createState() => _ArithmeticScreenState();
}

class _ArithmeticScreenState extends State<ArithmeticScreen> {
  final TextEditingController num1Controller = TextEditingController();
  final TextEditingController num2Controller = TextEditingController();
  String result = "Result: ";

  void calculateResult() {
    final num1 = double.tryParse(num1Controller.text) ?? 0;
    final num2 = double.tryParse(num2Controller.text) ?? 0;

    setState(() {
      result = "Result: \nSum: ${num1 + num2}, \nDifference: ${num1 - num2}, \nProduct: ${num1 * num2}, \nQuotient: ${num2 != 0 ? (num1 / num2).toStringAsFixed(2) : 'Infinity'}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Arithmetic Operations')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: num1Controller,
              decoration: const InputDecoration(labelText: 'Enter first number'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: num2Controller,
              decoration: const InputDecoration(labelText: 'Enter second number'),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: calculateResult,
              child: const Text('Calculate'),
            ),
            const SizedBox(height: 20),
            Text(result, style: const TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
