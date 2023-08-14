import 'dart:math';

import 'package:caraecoroa/resultado.dart';
import 'package:flutter/material.dart';

class Jogar extends StatefulWidget {
  const Jogar({super.key});

  @override
  State<Jogar> createState() => _JogarState();
}

class _JogarState extends State<Jogar> {
  void _exibirResultado() {
    var itens = ['cara', 'coroa'];
    var numero = Random().nextInt(itens.length);
    var resultado = itens[numero];

    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Resultado(resultado)
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff00FF7F),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              constraints: BoxConstraints(maxHeight: 200), // Defina a altura máxima da imagem
              child: Image.asset(
                'assets/logo.png',
                fit: BoxFit.contain,
              ),
            ),
            GestureDetector(
              onTap: _exibirResultado,
              child: Container(
                constraints: BoxConstraints(maxHeight: 100), // Defina a altura máxima da imagem
                child: Text(
                  "JOGAR",textAlign: TextAlign.center, style: TextStyle(backgroundColor: Colors.yellowAccent[100], fontSize: 30, decoration: TextDecoration.lineThrough),
                ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

