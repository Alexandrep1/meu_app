/* crie um novo aplicativo do zero

o aplicativo precisa usar material app
devera ter uma interface com as seguintes caracteristicas
-> titulo em appbar
-> menu de navegação lateral(drawer)
    -> insira o titulo do menu
    -> insira 5 opçoes de menu
-> o corpo do app devera ter
    -> mensagem de boas vindas
-> insira um rodape
-> o aplicativo deveta ter opçao de dark e light mode */

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyMaterial1 extends StatelessWidget {
  const MyMaterial1({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false, home: Tela());
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
      appBar: AppBar(title: Text("Pagina Principal")),
      body: Center(child: Text("BEM VINDO", style: TextStyle(fontSize: 50))),
      backgroundColor: Colors.pink[300],
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text(
                "Menu",
                style: GoogleFonts.roboto(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(title: Text("Home")),
            ListTile(title: Text("Produtos")),
            ListTile(title: Text("Serviços")),
            ListTile(title: Text("Contato")),
            ListTile(title: Text("Configurações")),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Center(child: Text("Rodapé", style: TextStyle(fontSize: 30))),
        ),
      ),
    );
  }
}
