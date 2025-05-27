import 'dart:math';
import 'package:flutter/material.dart';


class RandomNumber extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RandomNumberWidget(),
    );
  }
}

class RandomNumberWidget extends StatefulWidget {
  @override
  _RandomNumberWidgetState createState() => _RandomNumberWidgetState();
}

class _RandomNumberWidgetState extends State<RandomNumberWidget> {
  int randomNumber = 0;

  void generateRandom() {
    setState(() {
      randomNumber = Random().nextInt(100);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Gerador de Números Aleatórios')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "número aleatório: $randomNumber",
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: generateRandom,
              child: Text('Gerar número'),
            ),
          ],
        ),
      ),
    );
  }
}