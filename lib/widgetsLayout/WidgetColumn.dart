/* 
WIDGET COLUMN
é um widget usado para dispor widgets filhos verticalmente, um
embaixo do outro, dentro de um único eixo (o eixo vertical Y)

propriedades principais
children -> uma lista de widgets empilhados verticalmente
mainAxisAlignment -> alinha os filhos no eixo vertical
crosAxisalignment -> alinha os filhos no eixo cruzado (horizontal)
mainAxisSize -> controla se a column ocupa todo o espaço ou apenas
o necessário
textBiseLine -> necessário para o alinhamento do texto com crossAxisalignment.
baseline

 */

import 'package:flutter/material.dart';
import 'package:meu_app/widgetsLayout/Box.dart';

class WidgetColumn extends StatelessWidget {
  const WidgetColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
      /*       children: [
          Text("Texto 1"),
          Text("Texto 2"),
          Container(
            width: 50,
            height: 50,
            color: Colors.purple,
          )
        ], */
        children: [
          Box(text: "Box 1", backgroundcColor: Colors.blueGrey),
          Box(text: "Box 2", backgroundcColor: Colors.green),
          Box(text: "Box 2", backgroundcColor: Colors.red),
        ],
      ),
    );
  }
}