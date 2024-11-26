import 'package:flutter/material.dart';

class AreaCircleScreen extends StatefulWidget {
  const AreaCircleScreen({Key? key}) : super(key: key);

  @override
  _AreaCircleScreenState createState() => _AreaCircleScreenState();
}

class _AreaCircleScreenState extends State<AreaCircleScreen> {
  final TextEditingController radiusController = TextEditingController();
  String result = "Result: ";

  void calculateArea() {
    final radius = double.tryParse(radiusController.text) ?? 0;

    setState(() {
      result = "Result: Area = ${3.14 * radius * radius}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Area of Circle')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: radiusController,
              decoration: const InputDecoration(labelText: 'Radius'),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: calculateArea,
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
