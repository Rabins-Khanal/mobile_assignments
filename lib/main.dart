import 'package:flutter/material.dart';
import 'screens/dashboard_screen.dart';

void main() {
  runApp(const FirstAssignmentApp());
}

class FirstAssignmentApp extends StatelessWidget {
  const FirstAssignmentApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) //
  {
    return MaterialApp(
      title: 'First Assignment',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const DashboardScreen(),
    );
  }
}
