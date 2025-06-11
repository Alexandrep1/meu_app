import 'package:flutter/material.dart';
/**
 * o row e um widget que organiza os filhos horizontalmente, um ao 
 * lado do outro, dentro de um unico eixo horizontal X da esquerda
 * para a direita
 * 
 * PROPRIEDADES
 * 
 * children -> lista de widgets filhos alinhados horizozntalmente
 * mainAxisAlignment -> alinha os filhos no eixo principal(horizontal)
 * crossAxisAlignment -> alinha os filhos no eixo cruzado(vertical)
 * mainAxisSize = define se o row ocupa todo o espaco horizontal ou
 * so o necessario
 * textDirection -> define a direcao do conteudo: LTR (esquerda p/ direita)
 * ou RTL (direita p/ esquerda)
 */
class WidgetRow extends StatelessWidget {
  const WidgetRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      color: Colors.amber,
      child: Row(
        //mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text('TEXTO 1'),
          Text('TEXTO 2'),
          Text('TEXTO 3'),
          Text('TEXTO 4'),
        ],
      ),
    );
  }
}