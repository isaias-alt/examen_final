import 'package:flutter/material.dart';
import 'package:calculadorita/main.dart';
import 'package:yes_no_app/main.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Proyecto Principal',
      home: const HomePage(),
      routes: {
        '/calculator': (context) => const CalculadoraApp(),
        '/chat': (context) => const YesNoApp(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Proyecto Principal')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/calculator'),
              child: const Text('Calculadora'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/chat'),
              child: const Text('Chat'),
            ),
          ],
        ),
      ),
    );
  }
}
