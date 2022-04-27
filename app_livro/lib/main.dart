import 'package:app_livro/pages/livro_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AppLivro());
}

class AppLivro extends StatelessWidget {
  const AppLivro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyLivroPage(),
    );
  }
}
