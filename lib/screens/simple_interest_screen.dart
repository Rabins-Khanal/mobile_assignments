import 'package:flutter/material.dart';

class SimpleInterestScreen extends StatefulWidget {
  const SimpleInterestScreen({Key? key}) : super(key: key);

  @override
  _SimpleInterestScreenState createState() => _SimpleInterestScreenState();
}

class _SimpleInterestScreenState extends State<SimpleInterestScreen> {
  final TextEditingController principalController = TextEditingController();
  final TextEditingController rateController = TextEditingController();
  final TextEditingController timeController = TextEditingController();
  String result = "Result: ";

  void calculateSimpleInterest() {
    final principal = double.tryParse(principalController.text) ?? 0;
    final rate = double.tryParse(rateController.text) ?? 0;
    final time = double.tryParse(timeController.text) ?? 0;

    setState(() {
      result = "Result: Simple Interest = ${(principal * rate * time) / 100}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Simple Interest')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: principalController,
              decoration: const InputDecoration(labelText: 'Principal Amount'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: rateController,
              decoration: const InputDecoration(labelText: 'Rate of Interest (%)'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: timeController,
              decoration: const InputDecoration(labelText: 'Time (in years)'),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: calculateSimpleInterest,
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
