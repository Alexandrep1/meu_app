import 'package:flutter/material.dart';
import 'package:meu_app/Cupertino/widgetslayout/WidgetColumn.dart';
import 'package:meu_app/Cupertino/widgetslayout/WidgetContainer.dart';
import 'package:meu_app/Cupertino/widgetslayout/WidgetRow.dart';

class layoutapp extends StatelessWidget {
  const layoutapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Widgets de layout',
      home: MontandoTela(),
    );
  }
}

class MontandoTela extends StatefulWidget {
  const MontandoTela({super.key});

  @override
  State<MontandoTela> createState() => _MontandoTelaState();
}

class _MontandoTelaState extends State<MontandoTela> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Widgets de layout'),),
      //body: WidgetContainer(),
      //body: WidgetColumn(),
      body: WidgetRow(),
    );
  }
}