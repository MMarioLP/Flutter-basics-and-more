import 'package:flutter/material.dart';
import 'package:hola_mundo_flutter/presentation/widgets/custom_button.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: _resetCounter,
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$_counter', style: TextStyle(fontSize: 24)),
            SizedBox(height: 10),
            Text('cantidad de Clics', style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomButton(
            icon: Icons.remove,
            onPressed: _decrementCounter,
          ),
          SizedBox(width: 10),
          CustomButton(
            icon: Icons.add,
            onPressed: _incrementCounter,
          ),
          SizedBox(width: 10),
          CustomButton(
            icon: Icons.refresh,
            onPressed: _resetCounter,
          ),
        ],
      ),
    );
  }
}
