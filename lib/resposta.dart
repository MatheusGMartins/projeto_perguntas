import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() quandoResponder;

  Resposta(this.texto, this.quandoResponder);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(3),
      child: ElevatedButton(
        onPressed: quandoResponder,
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
