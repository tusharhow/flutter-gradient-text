import 'package:flutter/material.dart';
import 'dart:ui' as ui;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gradient TextStyle'),
      ),
      body: Center(
          child: Text(
        'Hello Flutter',
        style: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 50,
            foreground: Paint()
              ..shader = ui.Gradient.linear(
                const Offset(0, 60),
                const Offset(200, 10),
                <Color>[
                  Colors.purple,
                  Colors.redAccent,
                ],
              )),
      )),
    );
  }
}
