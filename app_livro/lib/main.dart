import 'package:flutter/material.dart';

void main() {
  runApp(const AppLivro());
}

class AppLivro extends StatelessWidget {
  const AppLivro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Row(
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
              ),
              const SizedBox(
                height: 45,
              ),
              const Text("Sobre o livro",
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: "Nunito-Regular",
                    fontWeight: FontWeight.bold,
                  )),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Este livro contém 11 projetos que ajudarão você a criar seus próprios aplicativos móveis usando o Flutter.",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Nunito-Regular",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
