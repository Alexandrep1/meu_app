import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyMaterial extends StatelessWidget {
  const MyMaterial({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Titulo do app',
      debugShowCheckedModeBanner: false,
      home: Tela(),
    );
  }
}

class Tela extends StatefulWidget {
  const Tela({super.key});

  @override
  State<Tela> createState() => _TelaState();
}

class _TelaState extends State<Tela> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('APP BAR')),
      body: Text('Corpo do aplicativo'),
      backgroundColor: Colors.purple[900],
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text(
                'Menu',
                style: GoogleFonts.anton(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(title: Text('HOME')),
            ListTile(title: Text('PRODUTOS')),
            ListTile(title: Text('SERVIÇOS')),
            ListTile(title: Text('CONTATO')),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){

        },
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(padding: EdgeInsetsGeometry.all(16), child: Text('Rodapé'),),
      ),
    );
  }
}
