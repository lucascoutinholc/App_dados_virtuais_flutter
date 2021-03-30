import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Dados Virtuais'),
        ),
        body: Dados(),
      ),
    );
  }
}

//Widget
class Dados extends StatefulWidget {
  Dados({Key key}) : super(key: key);

  @override
  _DadosState createState() => _DadosState();
}

//State
class _DadosState extends State<Dados> {
  String localizacaoDados = 'assets/images/';
  String nomeArquivo = 'dado';
  int numeroArquivo = 1;
  int numeroArquivo2 = 1;
  String extensaoArquivo = '.png';

  void girarDados() {
    setState(() {
      numeroArquivo = Random().nextInt(6) + 1;
      numeroArquivo2 = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                girarDados();
              },
              child: Image.asset(
                  '$localizacaoDados$nomeArquivo$numeroArquivo$extensaoArquivo'),
            ),
            flex: 1,
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                girarDados();
              },
              child: Image.asset(
                  '$localizacaoDados$nomeArquivo$numeroArquivo2$extensaoArquivo'),
            ),
            flex: 1,
          )
        ],
      ),
    );
  }
}
