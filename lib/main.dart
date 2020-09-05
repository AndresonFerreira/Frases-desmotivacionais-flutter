import 'dart:math';

import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    theme: ThemeData(
      primaryColor: Color.fromRGBO(47, 36, 58, 1),
      accentColor: Color.fromRGBO(250, 201, 184, 1),
      textTheme: TextTheme(
          bodyText2: TextStyle(
              color: Color.fromRGBO(250, 201, 184, 1)
          )
      ),
    ),
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _frases = [
    'É só uma fase ruim, \n logo vai piorar',
    'Lute como nunca. \n Perca como sempre',
    'Vai dar tudo certo... \n menos pra você',
    'Só dará errado se você tentar!',
    'A vida te derruba hoje preparando para a queda de amanhã',
    'Nenhum obstáculo é grande para quem desiste',
    'Sabe aquele projeto que você tanto se dedicou? \n vai dar errado.',
    'Acreditar que você pode já é meio caminho errado.',
  ];

  var fraseAtual = 'Cliqui no botão abaixo para gerar a frase.';


  void _gerarFrase(){
    var numeroSorteado = Random().nextInt(_frases.length);

    setState(() {
      fraseAtual = _frases[numeroSorteado];
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(68, 64, 84, 1),

      appBar: AppBar(
        title: Text('Desmotivacionais'),
      ),

      body: Center(
        child: Container(
          child:
          Text('$fraseAtual',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 35,),
          ),

        ),
      ),



      bottomNavigationBar: BottomAppBar(
        color: Color.fromRGBO(250, 201, 184, 1),
        shape: const CircularNotchedRectangle(),
        child: Container(height: 50.0,),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _gerarFrase,
        tooltip: 'Gerar nova frase',
        child: Icon(Icons.report, color: Color.fromRGBO(219, 138, 166, 1),),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
  
}
