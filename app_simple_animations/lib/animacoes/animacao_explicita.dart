import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class AnimacaoExplicita extends StatefulWidget {
  const AnimacaoExplicita({Key? key}) : super(key: key);

  @override
  State<AnimacaoExplicita> createState() => _AnimacaoExplicitaState();
}

// class _AnimacaoExplicitaState extends State<AnimacaoExplicita> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 300,
//       height: 200,
//       color: Colors.purple.shade500,
//     );
//   } 
// }
class _AnimacaoExplicitaState extends State<AnimacaoExplicita> {
  @override
  Widget build(BuildContext context) {
    return Row(
  mainAxisSize: MainAxisSize.min,
  children: <Widget>[
    const SizedBox(width: 20.0, height: 100.0),
    const Text(
      'Be',
      style: TextStyle(fontSize: 43.0),
    ),
    const SizedBox(width: 20.0, height: 100.0),
    DefaultTextStyle(
      style: const TextStyle(
        fontSize: 40.0,
        fontFamily: 'Horizon',
      ),
      child: AnimatedTextKit(
        animatedTexts: [
          RotateAnimatedText('AWESOME'),
          RotateAnimatedText('OPTIMISTIC'),
          RotateAnimatedText('DIFFERENT'),
        ],
        onTap: () {
          print("Tap Event");
        },
      ),
    ),
  ],
);
  }
}
