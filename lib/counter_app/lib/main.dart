import 'package:flutter/material.dart';

import 'presentation/screens/counter/counter_screen.dart';

void main() {
  runApp(const CounterApp());
}

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(colorSchemeSeed: Colors.red),
      debugShowCheckedModeBanner: false,
      home: const CounterScreen(),
    );
  }
}
