import 'package:flutter/material.dart';

class StoreStatus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: StoreStatusWidget());
  }
}

class StoreStatusWidget extends StatefulWidget {
  @override
  _StoreStatusWidgetState createState() => _StoreStatusWidgetState();
}

class _StoreStatusWidgetState extends State<StoreStatusWidget> {
  bool isOpen = true;

  void changeStatus() {
    setState(() {
      isOpen = !isOpen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Status da Loja"),
        leading: IconButton(
          icon: Icon(Icons.store),
          onPressed: () {},
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              isOpen ? "A Loja está Aberta" : "A Loja está Fechada",
              style: TextStyle(
                fontSize: 30,
                color: isOpen ? Colors.green : Colors.red,
              ),
            ),
            SwitchListTile(
              title: Text("Change Status"),
              subtitle: const Text("altere entre aberto/fechado"),
              value: isOpen,
              onChanged: (bool value) {
                setState(() {
                  isOpen = value;
                });
              },
              secondary: const Icon(Icons.store),
            ),
            const SizedBox(height: 20),
            Text(
              isOpen ? "a loja está aberta" : "a loja está fechada",
              style: TextStyle(fontSize: 14, color: Colors.red),
            ),
            
          ],
        ),
      ),
    );
  }
}