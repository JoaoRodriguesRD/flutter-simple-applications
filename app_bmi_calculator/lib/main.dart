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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  double _peso = 0;
  double _altura = 0;
  String _value = "calcule apertando no botao";
  String _msg = "Ainda não sabemos seu imc...";

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HEATLH CALCULATOR"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const Text(
                'O índice de massa corporal (IMC) é uma medida internacional usada para, calcular se uma pessoa está no peso ideal',
              ),
              TextField(
                keyboardType: TextInputType.number,
                style: Theme.of(context).textTheme.headline4,
                decoration: const InputDecoration(labelText: 'Peso'),
                onChanged: (peso) {
                  setState(() {
                    if (peso != '') {
                      _peso = double.parse(peso);
                    }
                  });
                },
              ),
              TextField(
                keyboardType: TextInputType.number,
                style: Theme.of(context).textTheme.headline4,
                decoration: const InputDecoration(labelText: 'Altura'),
                onChanged: (altura) {
                  setState(() {
                    if (altura != '') {
                      _altura = double.parse(altura);
                    }
                  });
                },
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Theme.of(context).primaryColor,
                  onPrimary: Colors.white,
                ),
                onPressed: () {
                  setState(() {
                    double bmi = _peso / (_altura * _altura);
                    _value = bmi.toStringAsFixed(2);
                    //Próxima lógica da mensagem _msg:
                    /** 
                     *  18.5< adulto com baixo peso
                     * 18,5 < = x < 25 adulto peso ideal
                     * 25 <= x < 30 adulto sobrepeso
                     * 30,0 < = x < 35 obs grau I
                     * 35,0 < = x < 40 obs grau II
                     *  40 <= x obs grau III
                     * 
                     */
                    if (bmi < 18.5) {
                      _msg = "adulto com baixo peso";
                    }
                    if (bmi >= 18.5 && bmi < 25) {
                      _msg = "adulto com peso ideal";
                    }
                    if (bmi >= 25 && bmi < 30) {
                      _msg = "adulto com sobrepeso";
                    }
                    if (bmi >= 30 && bmi < 35) {
                      _msg = "adulto com obesidade grau I";
                    }
                    if (bmi >= 35 && bmi < 40) {
                      _msg = "adulto com obesidade grau II";
                    }
                    if (bmi >= 40) {
                      _msg = "adulto com obesidade grau III";
                    }
                  });
                },
                child: const Text('Calcular IMC'),
              ),
              const SizedBox(height: 10),
              Container(
                color: Theme.of(context).backgroundColor,
                padding: const EdgeInsets.all(23.0),
                child: Column(
                  children: <Widget>[
                    Text(
                      _value,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    Text(
                      _msg,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ],
                ),
              ),
              // Card(
              //   child: Container(
              //     color: Theme.of(context).primaryColor,
              //     child: SizedBox(
              //       width: 300,
              //       height: 100,
              //       child: Text(
              //         "data",
              //         style:
              //             TextStyle(color: Theme.of(context).primaryColorLight),
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }

  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    onPrimary: Colors.white,
    primary: Colors.green,
    minimumSize: Size(88, 36),
    padding: EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(2)),
    ),
  );
}
