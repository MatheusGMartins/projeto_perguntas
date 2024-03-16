import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() onSelecao;

  Resposta(this.texto, this.onSelecao);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(3),
      child: ElevatedButton(
        onPressed: onSelecao,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
        ),
        child: Text(
          texto,
          style: const TextStyle(fontSize: 20, color: Colors.white),
          textAlign: TextAlign.center,
          
        ),
      ),
    );
  }
}
