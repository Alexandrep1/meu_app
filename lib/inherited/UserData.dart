import 'package:flutter/material.dart';

class UserData extends InheritedWidget{
  final String username;

  const UserData({
    required this.username,
    required Widget child //widget filho que herda o nome
  }) : super(child: child); //passa o filho para o construtor pai

  /**
   * este método estatico pode ser chamado independente de termos instanciado o objeto ou não.
   * definimos um método estatico chamado of 
   * isso signifca que voce pode chamaar UserData.of(context) sem precisar de uma isntancia de UserData.
   * quem chamar vai receber um BuildContext, ou seja o contexto onde o widget está na arvore
   */
  static UserData of(BuildContext context){
    //este método procura o widget mais proximo do tipo UserData acima do widget atual
   final result = context.dependOnInheritedWidgetOfExactType<UserData>();
    return result!;
  }
  
  @override
  bool updateShouldNotify(UserData oldWidget) {
    return oldWidget.username != username;
  }

  
}