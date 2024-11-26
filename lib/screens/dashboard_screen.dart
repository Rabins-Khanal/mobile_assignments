import 'package:flutter/material.dart';
import 'arithmetic_screen.dart';
import 'simple_interest_screen.dart';
import 'area_circle_screen.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dashboard')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ArithmeticScreen()),
                );
              },
              child: const Text('Arithmetic'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SimpleInterestScreen()),
                );
              },
              child: const Text('Simple Interest'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AreaCircleScreen()),
                );
              },
              child: const Text('Area of Circle'),
            ),
          ],
        ),
      ),
    );
  }
}
