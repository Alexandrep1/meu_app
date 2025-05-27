import 'package:flutter/material.dart';

class Userdata extends InheritedWidget{
  final String username;

  const Userdata({
    required this.username,
    required Widget child,//wirdget filho que herda o nome
  }) : super(child: child);//passa o filgo para o construtor pai

/* 
  este método estatico pode ser chamado independente de termos instanciado
  objeto ou não.
  definimos um método estatico chamado of
  isso significa que voce pode chamar UserData.of(context) sem precisar de uma
  instancia de UserData.
  quem chamar vai receber um buildcontext, ou seja o contexto onde o widget está
  na arvore 
 */

  static Userdata of(BuildContext context) {
    //este método procura o widget mais proximo do tipo UserData acima do widget atual
   final result = context.dependOnInheritedWidgetOfExactType<Userdata>();
    return result!;
  }

  @override
  bool updateShouldNotify(Userdata oldWidget) {
    return oldWidget.username != username;
  }
}