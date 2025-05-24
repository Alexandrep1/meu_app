import 'package:flutter/material.dart';
import 'package:meu_app/view/home.view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "flutter demo",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeView(),
    );
  }
}