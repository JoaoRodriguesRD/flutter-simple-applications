import 'package:flutter/material.dart';

import 'animacoes/animacao_explicita.dart';
import 'animacoes/animacao_implicita.dart';
import 'animacoes/animacao_tween.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _indiceAnimacao = 0;

  final List<Widget> _widgets = <Widget>[
    const AnimacaoImplicita(),
    const AnimcaoTween(),
    const AnimacaoExplicita()
  ];

  void _selecionarItem(int indice) {
    setState(() {
      _indiceAnimacao = indice;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animações em Flutter'),
      ),
      body: Center(
        child: _widgets[_indiceAnimacao],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _indiceAnimacao,
          onTap: _selecionarItem,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.import_export_outlined),
              label: 'Implícita',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.expand),
              label: 'Tween',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.details_outlined),
              label: 'Explícita',
            ),
          ]),
    );
  }
}
