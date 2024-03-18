import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questionario.dart';
import './resultado.dart';

main() => runApp(PerguntaApp());

class PerguntaApp extends StatefulWidget {
  @override
  State<PerguntaApp> createState() => _PerguntaAppState();
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;

  final _perguntas = const [
    {
      'texto': 'Qual é a sua cor favorita?',
      'respostas': [
        {'texto': 'Preto', 'pontuacao': 10},
        {'texto': 'Vermelho', 'pontuacao': 5},
        {'texto': 'Verde', 'pontuacao': 3},
        {'texto': 'Branco', 'pontuacao': 1}
      ],
    },
    {
      'texto': 'Qual é o seu animal favorito?',
      'respostas': [
        {'texto': 'Coelho', 'pontuacao': 10},
        {'texto': 'Cobra', 'pontuacao': 5},
        {'texto': 'Elefante', 'pontuacao': 3},
        {'texto': 'Leão', 'pontuacao': 1}
      ],
    },
    {
      'texto': 'Qual é o seu ator favorito?',
      'respostas': [
        {'texto': 'Leonardo DiCaprio', 'pontuacao': 10},
        {'texto': 'Brad Pitt', 'pontuacao': 5},
        {'texto': 'Dwayne Johnson “The Rock”', 'pontuacao': 3},
        {'texto': 'Will Ferrell', 'pontuacao': 1}
      ],
    }
  ];

  void _responder(int pontuacao) {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += pontuacao;
      });
    }
  }

  void _reinicarQuestionario(){
    setState(() {
    
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });
  }


  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Container(
              width: double.infinity,
              margin: const EdgeInsets.all(10),
              child: const Text(
                'Perguntas',
                style: TextStyle(
                  fontSize: 28,
                  color: Color.fromARGB(255, 15, 65, 90),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          body: temPerguntaSelecionada
              ? Questionario(
                  perguntas: _perguntas,
                  perguntaSelecionada: _perguntaSelecionada,
                  quandoResponder: _responder,
                )
              : Resultado(_pontuacaoTotal, _reinicarQuestionario)),
    );
  }
}
