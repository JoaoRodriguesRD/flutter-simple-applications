import 'package:flutter/material.dart';

class AnimacaoExplicita extends StatefulWidget {
  const AnimacaoExplicita({Key? key}) : super(key: key);

  @override
  State<AnimacaoExplicita> createState() => _AnimacaoExplicitaState();
}

class _AnimacaoExplicitaState extends State<AnimacaoExplicita> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 200,
      color: Colors.purple.shade500,
    );
  }
}
