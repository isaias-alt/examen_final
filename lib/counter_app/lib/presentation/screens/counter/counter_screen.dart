import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                clickCounter = 0;
              });
            },
            icon: const Icon(Icons.refresh_rounded),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$clickCounter',
              style:
                  const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
            ),
            Text(
              clickCounter == 1 ? 'Click' : 'Clicks',
              style: const TextStyle(fontSize: 25),
            )
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomFloatingActionButton(
            heroTag: 'increment',
            icon: Icons.plus_one_outlined,
            onPressed: () {
              setState(() {
                // Si el contador es menor a 20, incrementará en 1
                if (clickCounter < 20) {
                  clickCounter++;
                }
              });
            },
          ),
          const SizedBox(height: 20),
          CustomFloatingActionButton(
            heroTag: 'decrement',
            icon: Icons.exposure_minus_1_outlined,
            onPressed: () {
              setState(() {
                // Si el contador es mayor a -20, decrementará en 1
                if (clickCounter > -20) {
                  clickCounter--;
                }
              });
            },
          ),
          const SizedBox(height: 20),
          CustomFloatingActionButton(
            heroTag: 'reset',
            icon: Icons.refresh_outlined,
            onPressed: () {
              setState(() {
                clickCounter = 0;
              });
            },
          ),
        ],
      ),
    );
  }
}

class CustomFloatingActionButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;
  final String heroTag;

  const CustomFloatingActionButton({
    super.key,
    required this.icon,
    required this.onPressed,
    required this.heroTag,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: heroTag,
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
