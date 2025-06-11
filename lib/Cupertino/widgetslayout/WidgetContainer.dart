import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/**
 * widget container e um bloco de construcao visual que permite
 * controlar layout, espacamento, cor, bordas, transformacao e muito mais
 * 
 * FUNCOES DO CONTAINER
 * 
 * width / height -> largura e altura fixas
 * padding -> espaco interno (preenchimento) dentro do container
 * margin -> espaco externo (fora do container)
 * color -> cor de fundo do container
 * alignment -> alinha o elemento filgo dentro do container
 * decoration -> estilo visual completo (cores, bordas,
 * sombreamento e etc)
 * child -> o conteudo do container (filho)
 * constraints -> limita dimensoes (minimo e maximo)
 * transform -> aplica rotacao, escala, transformacao e etc
 */

class WidgetContainer extends StatelessWidget {
  const WidgetContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      padding: EdgeInsets.all(16),
      color: Colors.red,
      alignment: Alignment.center,
      //child: Text('Container',style: TextStyle(fontSize: 35),),
      child: Container(
        width: 80,
        height: 80,
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
        color: Colors.green,
          border: Border.all(
            color: Colors.white,
            width: 4
          ),
          borderRadius: BorderRadius.circular(12)
        ),
      ),
    );
  }
}