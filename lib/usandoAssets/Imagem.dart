import 'package:flutter/material.dart';

/* 
  Formatos de imagens aceitos pelo flutter
  png, jpeg/jpg, gif, webp, bmp, wbmp, ico, svg, heif/heic
  svg - não é nativo (precisa de biblioteca)
  heif/heic - não é nativo (precisa de biblioteca)
 */


class Imagem extends StatelessWidget {
  const Imagem({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Inserindo imagem"),
        ),
        body: Center(
          child: Image.asset("assets/images/moto.jpg", width: 100,),
        ),
      ),
    );
  }
}