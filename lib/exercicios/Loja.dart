import 'package:flutter/material.dart';

class Loja extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LojaStatusPage(),
    );
  }

}

class LojaStatusPage extends StatefulWidget {
  const LojaStatusPage({super.key});

  @override
  State<LojaStatusPage> createState() => _LojaStatusPageState();
}

class _LojaStatusPageState extends State<LojaStatusPage> {
  bool _aberto = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Status da loja"),),
      body: Column(
        children: [
          SwitchListTile(
            title: const Text("Loja aberta"),
            subtitle: const Text("alterne entre aberto/fechado"),
            value: _aberto,
            onChanged: (bool value){
              setState(() {
                _aberto = value;
              });
            },
            secondary: const Icon(Icons.store),
          ),
          const SizedBox(height: 20),
          Text(_aberto ? "a loja está aberta" : "a loja está fechada",
          style: TextStyle(
            fontSize: 14, 
            color: _aberto ? Colors.green : Colors.red
            ),)
        ],
      ),
    );
  }
}