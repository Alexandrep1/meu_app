import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meu_app/Cupertino/widgetslayout/Box.dart';

/**
 * WIDGET COLUNM
 * e um widget usado para dispor widgets filhos verticalmente, um
 * embaixo do outro, dentro de um unico eixo (o eixo vertical y)
 * 
 * PROPRIEDADES PRINCIPAIS
 * 
 * children -> uma lista de widgets empilhados verticalmente
 * mainAxisAlignment -> alinha os filhos no eixo vertical
 * crosAxisalignment -> alinha os filhos no eixo cruzado (horizontal)
 * mainAxisSize -> controla se a column ocupa todo o espaco ou apenas o necessario
 * texBiseLine -> necessario para o alinhamento de texto do crosAxisalignment.
 * 
 */

class WidgetColumn extends StatelessWidget {
  const WidgetColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
       /*  children: [
          Text('texto 1'),
          Text('texto 2'),
          Container(
            width: 50,
            height: 50,
            color: Colors.deepOrangeAccent,
          )
        ], */
        children: [
          Box(text: 'BOX 1', backgroundColor: Colors.blueAccent),
          Box(text: 'BOX 2', backgroundColor: Colors.amberAccent),
          Box(text: 'BOX 3', backgroundColor: const Color.fromARGB(255, 118, 98, 24)),
        ],
      ),
    );
  }
}