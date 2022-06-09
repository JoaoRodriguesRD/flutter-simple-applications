import 'package:flutter/material.dart';

class AnimacaoImplicita extends StatefulWidget {
  const AnimacaoImplicita({Key? key}) : super(key: key);

  @override
  State<AnimacaoImplicita> createState() => _AnimacaoImplicitaState();
}

class _AnimacaoImplicitaState extends State<AnimacaoImplicita> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 200,
      color: Colors.yellow.shade600,
    );
  }
}
