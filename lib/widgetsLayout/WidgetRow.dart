import 'package:flutter/material.dart';

/* 
O row é um widget que organiza os filhos horizontalmente, um ao lado do outro,
dentor de um unico eixo horizontal X da esquerda para a direita

propriedades
children -> lista de widgets filhos alinhados horizontalmente
mainAxisAlignment -> alinha os filhos no eixo principal
(horizontal)
crossAxisAlignment -> alinha os filhos no eixo cruzado (vertical)
mainAxisSize = define se o row ocupa todo o espaço horizontal ou só o necessário
textDirection -> define a direção do conteúdo: LTR (esquerda p/ direita) ou RTL
(direita / esquerda)
 */

class WidgetRow extends StatelessWidget {
  const WidgetRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      color: Colors.amber,
      child: Row(
     // mainAxisAlignment: MainAxisSize.min,
     mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text("Texto 1"),
        Text("Texto 2"),
        Text("Texto 3"),
        Text("Texto 4"),
      ],
      ),
    );
  }
}