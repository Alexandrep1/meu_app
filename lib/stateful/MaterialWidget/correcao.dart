import 'package:flutter/material.dart';

class Aplicativo extends StatefulWidget {
  const Aplicativo({super.key});

  @override
  State<Aplicativo> createState() => _MyAppState();
}

class _MyAppState extends State<Aplicativo> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Exercicio Material App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
      home: HomePage(
        toggleTheme: () {
          setState(() {
            isDarkMode = !isDarkMode;
          });
        },
        isDarkMode: isDarkMode,
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  final VoidCallback toggleTheme;
  final bool isDarkMode;

  const HomePage({required this.toggleTheme, required this.isDarkMode});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercicio Material"),
        actions: [
          IconButton(
            icon: Icon(isDarkMode ? Icons.nightlight_round : Icons.wb_sunny),
            onPressed: toggleTheme,
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.brown),
              child: Text(
                "Menu de navegação",
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Perfil"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.shopping_bag),
              title: Text("Produtos"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.category),
              title: Text("Outro produto"),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Center(
              child: Text("seja bem vindo(a)", style: TextStyle(fontSize: 20),),
            ),
          ),
          SwitchListTile(
            title: Text(
              Theme.of(context).brightness == Brightness.dark ? "modo escuro" : "modo claro"
            ),
            value: Theme.of(context).brightness == Brightness.dark,
            onChanged: (value) => toggleTheme(),
          )
        ],
        ),
        bottomNavigationBar: Container(
          color: Colors.brown,
          padding: EdgeInsets.all(16),
          child: Text("rodapé do app",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16),),
       ),
    );
  }
}
