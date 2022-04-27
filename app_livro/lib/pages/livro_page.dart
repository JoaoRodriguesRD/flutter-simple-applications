import 'package:flutter/material.dart';

class MyLivroPage extends StatefulWidget {
  const MyLivroPage({Key? key}) : super(key: key);

  @override
  _MyLivroPageState createState() => _MyLivroPageState();
}

class _MyLivroPageState extends State<MyLivroPage> {
  @override
  Widget build(BuildContext context) {
    return mainBuilder();
  }
}

Scaffold mainBuilder() {
  return Scaffold(
    body: SafeArea(
      child: mainColumn(),
    ),
  );
}

Column mainColumn() {
  return Column(
    children: [
      titleRow(),
      mySizedBoxVertical(45),
      titleText(),
      mySizedBoxVertical(20),
      aboutText(),
    ],
  );
}

Row titleRow() {
  return Row(
    children: [
      const Image(
        image: AssetImage('media/livro.jpeg'),
        width: 150,
        height: 100,
      ),
      Column(
        children: const [
          Text("Projeto Flutter",
              style: TextStyle(
                fontSize: 20,
                fontFamily: "Nunito-Regular",
              )),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              "Por",
              style: TextStyle(
                fontSize: 15,
                fontFamily: "Nunito-Regular",
              ),
            ),
          ),
          Text(
            "Joao r de Melo Neto",
            style: TextStyle(
              fontSize: 15,
              fontFamily: "Nunito-Regular",
            ),
          ),
        ],
      ),
    ],
  );
}

SizedBox mySizedBoxVertical(double size) {
  return SizedBox(
    height: size,
  );
}

Text aboutText() {
  return Text(
      "Este livro contém 11 projetos que ajudarão você a criar seus próprios aplicativos móveis usando o Flutter.",
      style: myFontStyle(20));
}

Text titleText() {
  return Text(
    "Sobre o livro",
    style: myFontStyleBold(20),
  );
}

TextStyle myFontStyle(double myfontSize) {
  return TextStyle(
    fontSize: myfontSize,
    fontFamily: "Nunito-Regular",
  );
}
TextStyle myFontStyleBold(double myfontSize) {
  return TextStyle(
    fontSize: myfontSize,
    fontFamily: "Nunito-Regular",
    fontWeight: FontWeight.bold,
  );
}
