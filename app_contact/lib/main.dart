import 'package:app_contact/pages/contact_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AppContact());
}

class AppContact extends StatelessWidget {
  const AppContact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyContactPage(),
    );
  }
}