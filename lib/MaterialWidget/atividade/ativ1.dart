import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode _themeMode = ThemeMode.light;

  void _toggleTheme(bool isDarkMode) {
    setState(() {
      _themeMode = isDarkMode ? ThemeMode.dark : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drogaria do Jarde',
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: Colors.green,
        textTheme: TextTheme(bodyLarge: TextStyle(color: Colors.black)),
      ),
      darkTheme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
        primaryColor: Colors.green[800],
        textTheme: TextTheme(bodyLarge: TextStyle(color: Colors.white)),
      ),
      themeMode: _themeMode,
      home: HomePage(
        isDarkMode: _themeMode == ThemeMode.dark,
        onToggleTheme: _toggleTheme,
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  final bool isDarkMode;
  final ValueChanged<bool> onToggleTheme;

  HomePage({required this.isDarkMode, required this.onToggleTheme});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drogaria do Jarde'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Theme.of(context).primaryColor),
              child: Text(
                'Menu Principal',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: const Color.fromARGB(255, 26, 186, 29),
              ),
              title: Text(
                'Página Inicial',
                style: TextStyle(color: const Color.fromARGB(255, 26, 186, 29)),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.person,
                color: const Color.fromARGB(255, 26, 186, 29),
              ),
              title: Text(
                'Perfil',
                style: TextStyle(color: const Color.fromARGB(255, 26, 186, 29)),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: const Color.fromARGB(255, 26, 186, 29),
              ),
              title: Text(
                'Configurações',
                style: TextStyle(color: const Color.fromARGB(255, 26, 186, 29)),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.help,
                color: const Color.fromARGB(255, 26, 186, 29),
              ),
              title: Text(
                'Ajuda',
                style: TextStyle(color: const Color.fromARGB(255, 26, 186, 29)),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.info,
                color: const Color.fromARGB(255, 26, 186, 29),
              ),
              title: Text(
                'Sobre',
                style: TextStyle(color: const Color.fromARGB(255, 26, 186, 29)),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors:
                isDarkMode
                    ? [Colors.black, Colors.green[800]!]
                    : [Colors.white, Colors.green],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Bem-vindo ao Drogaria do Jarde!',
              style: TextStyle(
                fontSize: 24,
                color:
                    Theme.of(context).brightness == Brightness.dark
                        ? Colors.white
                        : Colors.black,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Modo Claro',
                  style: TextStyle(
                    color:
                        Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Colors.black,
                  ),
                ),
                Switch(value: isDarkMode, onChanged: onToggleTheme),
                Text(
                  'Modo Escuro',
                  style: TextStyle(
                    color:
                        Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Colors.black,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Theme.of(context).primaryColor,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'Drogaria do Jarde - Sua lombra é nossa prioridade!',
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
