import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: const Center(
                child: Text(
          'Uso de imagenes',
          style: TextStyle(fontSize: 10),
        ))),
        body: Center(
          child: Image.asset('/assets/images/ai-generated-8674235_960_720.png'),
        ),
      ),
    );
  }
}
