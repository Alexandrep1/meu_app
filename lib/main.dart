import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meu_app/Botao.dart';
import 'package:meu_app/Loja.dart';
import 'package:meu_app/stateful/Contador.dart';
import 'package:meu_app/stateful/DarkMode.dart';
import 'package:meu_app/stateful/MaterialWidget/MyMaterial.dart';
import 'package:meu_app/stateful/MaterialWidget/correcao.dart';
import 'package:meu_app/stateful/MaterialWidget/exercicio.dart';
import 'package:meu_app/stateful/RandomNumberWidget.dart';
import 'package:meu_app/stateful/inherited/UserInfos.dart';
import 'package:meu_app/stateless/SemEstado.dart';
import 'package:meu_app/stateless/User.dart';


/* void main() {
  runApp(Center(
    child: Text(
      "utilizando flutter",
      textDirection: TextDirection.ltr,
      style: TextStyle(color: Colors.pink, fontSize: 30.0),
    ),
  ));
}
  */


/*
 * NO FLUTTER TEMOS 3 TIPOS DE ESTADOS DE APLICAÇÃO
 * STATELESS (ESTADO IMUTAVEL)
 * A UI NUNCA MUDA APÓS SER CONSTRUIDA
 * E USADO PARA COMPONENTES ESTÁTICOS COMO ICONES, TEXTOS FIXOS E ETC.
 * 
 * STATEFUL (ESTADO LOCAL)
 * A UI MUDA QUANDO O ESTADO INTERNO MUDA
 * É USADO EM WIDGETS QUE TEM INTERAÇÃO COM O USUÁRIO, COMO ENTRADAS
 * DE TEXTOS, CARREGAMENTO DE DADOS, ANIMAÇÕES E ETC
 * 
 * INHERITED (ESTADO HERDADO)
 * COMPARTIHA DADOS DESCENDENTES NA ARVORE DE WIDGETS
 * UTIL PARA DADOS GLOBAIS LEVES COMO TEMAS, IDIOMAS E ETC. 
 */



/*  runApp(SemEstado()); 
 runApp(MaterialApp(
  home: Center(
    child: Botao(),
  ),
  )); */

 // runApp(User());

 //exemplo stateful


/*  void main(){

 runApp(Aplicativo());
} 
 */







