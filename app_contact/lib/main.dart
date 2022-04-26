import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(const AppContact());
}

class AppContact extends StatelessWidget {
  const AppContact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            const CircleAvatar(
              radius: 50.0,
              foregroundImage: AssetImage('media/img_avatar.png'),
            ),
            const SizedBox(
              height: 40.0,
            ),
            const Text(
              "Joao r de melo neto",
              style: TextStyle(
                fontSize: 30,
                fontFamily: "VT323-Regular",
              ),
            ),
            const Text(
              "Engenheiro de software",
              style: TextStyle(
                fontSize: 24,
                fontFamily: "VT323-Regular",
              ),
            ),
            const SizedBox(
              width: 150.0,
              height: 30.0,
              child: Divider(
                color: Colors.black,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
              decoration: BoxDecoration(
                color: Colors.black12,
                border: Border.all(color: Colors.black, width: 2.8),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                children: const [
                  Icon(
                    Icons.phone,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    "+55 (086) 99999-9999",
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: "VT323-Regular",
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
              decoration: BoxDecoration(
                color: Colors.black12,
                border: Border.all(color: Colors.black, width: 2.8),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                children: const [
                  Icon(
                    Icons.email,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    "joaoneto@email.com",
                    style: TextStyle(
                      fontSize: 22,
                      fontFamily: "VT323-Regular",
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
