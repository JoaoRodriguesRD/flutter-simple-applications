import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Jockey - Poo!😝',
      theme: ThemeData(
        //(68,136,153)
        primarySwatch: Colors.blue,
      ),
      home: const MyHome(),
    );
  }
}

class Jankenpon extends StatefulWidget {
  const Jankenpon({Key? key}) : super(key: key);

  @override
  State<Jankenpon> createState() => _JankenponState();
}

class _JankenponState extends State<Jankenpon> {
  int _userChoice = 4;
  int _botChoice = 4;
  List<String> images = [
    'images/rock.png',
    'images/paper.png',
    'images/scissor.png',
    'images/void.png',

  ];
  void reiniciar() {
    _userChoice = 4;
  }

  void _choiceRock() {
    setState(() {
      _userChoice = 1;
    });
  }

  void _choicePaper() {
    setState(() {
      _userChoice = 2;
    });
  }

  void _choiceScissor() {
    setState(() {
      _userChoice = 3;
    });
  }

  //Pedra(1) ganha de tesoura(3) e perde para papel(2)
  //(2) ganha de (1) e perde para (3)
  //(3) ganha de (2) e perde para (1)
  String jankenponLogic() {
    String result = "Não começou...";
    if (_userChoice == _botChoice) {
      result = "empatou";
    } else {
      if (_userChoice == 1) {
        if (_botChoice == 2) {
          result = "perdeu";
        } else {
          result = "ganhou";
        }
      }
      if (_userChoice == 2) {
        if (_botChoice == 3) {
          result = "perdeu";
        } else {
          result = "ganhou";
        }
      }
      if (_userChoice == 3) {
        if (_botChoice == 1) {
          result = "perdeu";
        } else {
          result = "ganhou";
        }
      }
    }
    return result;
  }

  Widget playChoice() {
    String text = "";
    String result = "";
    String textBotChoice = "";
    var random = Random();
    _botChoice = random.nextInt(3) + 1;
    switch (_botChoice) {
      case 1:
        textBotChoice = "computador escolheu Pedra✊";
        break;
      case 2:
        textBotChoice = "computador escolheu Papel✋";
        break;
      case 3:
        textBotChoice = "computador escolheu Tesoura✌️";
        break;
      default:
        textBotChoice = "";
    }
    result = jankenponLogic();
    
    switch (_userChoice) {
      case 1:
        text = "Você escolheu pedra✊";
        
        break;
      case 2:
        text = "Você escolheu papel✋";
        

        break;
      case 3:
        text = "Você escolheu tesoura✌️";
        

        break;
      default:
        text = "Escolha pedra papel ou tesoura";
        textBotChoice = "";
        
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(text),
        Text(textBotChoice),
        CircleAvatar(
          foregroundImage: AssetImage(images[_userChoice - 1]),
          radius: 75,
        ),
        Text(result),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(100, 119, 221, 238),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          playChoice(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Image(image: AssetImage(images[0])),
                onPressed: _choiceRock,
                splashRadius: 60,
                iconSize: 60,
              ),
              IconButton(
                icon: Image(image: AssetImage(images[1])),
                onPressed: _choicePaper,
                splashRadius: 60,
                iconSize: 60,
              ),
              IconButton(
                icon: Image(image: AssetImage(images[2])),
                onPressed: _choiceScissor,
                splashRadius: 60,
                iconSize: 60,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Jockey - Poo ! 😝"),
      ),
      body: const SafeArea(
          child: Center(
        child: Jankenpon(),
      )),
    );
  }
}
