import 'package:flutter/material.dart';

class Resultado extends StatefulWidget {
  String valor;
  Resultado(this.valor);

  @override
  State<Resultado> createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  @override
  Widget build(BuildContext context) {
    var caminhoImagem = 'assets/cara.png';
    if (widget.valor == 'cara') {
      caminhoImagem = 'assets/cara.png';
    } else {
      caminhoImagem = 'assets/coroa.png';
    }

    return Scaffold(
      backgroundColor: Color(0xff00FF7F),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: FittedBox(
                fit: BoxFit.contain,
                child: Image.asset(caminhoImagem),
              ),
            ),
            SizedBox(width: 200),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: AspectRatio(
                aspectRatio: 3.0, // Defina a proporção desejada
                  child: Text(
                    "Voltar",textAlign: TextAlign.center, style: TextStyle(backgroundColor: Colors.yellowAccent[100], fontSize: 30, decoration: TextDecoration.lineThrough),
                  ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

