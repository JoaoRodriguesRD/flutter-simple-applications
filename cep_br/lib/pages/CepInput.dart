import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CepInput extends StatefulWidget {
  CepInput({Key? key}) : super(key: key);

  @override
  State<CepInput> createState() => _CepInputState();
}

class _CepInputState extends State<CepInput> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Consulta CEP"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            TextFormField(
              keyboardType: TextInputType.number,
            ),
            // ElevatedButton(
            //   style: ElevatedButton.styleFrom(
            //     primary: Theme.of(context).primaryColor,
            //     onPrimary: Colors.white,
            //   ),
            //   onPressed: () {
            //     setState(() {});
            //   },
            //   child: const Text('Calcular IMC'),
            // ),
          ],
        ),
      ),
    );
  }
}
