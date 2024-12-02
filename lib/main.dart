import 'package:examen_final/counter_app/lib/main.dart';
import 'package:flutter/material.dart';
import 'package:yes_no_app/main.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Proyecto Principal',
      home: const HomePage(),
      // Rutas de navegación
      routes: {
        '/chat': (context) => const YesNoApp(),
        '/counter': (context) => const CounterApp(),
      },
    );
  }
}

// El widget que se muestra en la pantalla principal de la aplicación con las rutas de navegación
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
              onPressed: () => Navigator.pushNamed(context, '/counter'),
              child: const Text('Contador'),
            ),
            const SizedBox(height: 20),
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
