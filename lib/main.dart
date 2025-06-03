import 'package:flutter/material.dart';
import 'package:meu_app/Debug.dart';
import 'package:meu_app/usandoAssets/Fonts.dart';
import 'package:meu_app/usandoAssets/Imagem.dart';

void main(){

  //runApp(Imagem());
  runApp(const MaterialApp(home: Debug(numeroMaximo: 10),));
}