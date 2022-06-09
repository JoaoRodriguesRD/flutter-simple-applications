import 'package:flutter/material.dart';

class AnimcaoTween extends StatefulWidget {
  const AnimcaoTween({Key? key}) : super(key: key);

  @override
  State<AnimcaoTween> createState() => _AnimcaoTweenState();
}

class _AnimcaoTweenState extends State<AnimcaoTween> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 200,
      color: Colors.green.shade700,
    );
  }
}
