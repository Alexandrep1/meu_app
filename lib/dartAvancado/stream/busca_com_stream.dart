import 'dart:async';
import 'package:flutter/material.dart';

class BuscaComStream extends StatefulWidget {
  const BuscaComStream({super.key});

  @override
  State<BuscaComStream> createState() => _BuscaComStreamState();
}

class _BuscaComStreamState extends State<BuscaComStream> {
  final _controllerBusca = StreamController<String>();
  final List<String> _items = [
    'maça',
    'banana',
    'melancia',
    'tangerina',
    'manga',
    'abacaxi',
    'roma',
    'limao',
    'ponca',
    'uva',
    'laranja'
  ];

  List<String> _filtrar(String termo) {
    return _items
        .where((item) => item.toLowerCase().contains(termo.toLowerCase()))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Buscar produtos (stream)')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(labelText: 'buscar fruta'),
              onChanged: (value) {
                _controllerBusca.add(value);
              },
            ),
            const SizedBox(height: 20),
            Expanded(
              child: StreamBuilder<String>(
                stream: _controllerBusca.stream,
                builder: (context, snapshot) {
                  final listaFiltrada = _filtrar(snapshot.data ?? '');
                  return ListView.builder(
                    itemCount: listaFiltrada.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(listaFiltrada[index]),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
