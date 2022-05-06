import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Flutter Inputs'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String _userInputs = "your first input";
  bool _isChecked = true;
  bool _isCheckedSwitch = true;
  double _sliderValue = 0;
  String _choices = "defaultChoice";
  //imc = peso/(altura)ˆ2;

  void _stringCounter(String userInput) {
    setState(() {
      _counter = userInput.length;
    });
  }

  void _setUserInputs(String userInput) {
    setState(() {
      _userInputs = userInput;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            myTextFieldSubmit(),
            myTextFieldCharacterCounter(),
            myTextFieldNumber(),
            myCheckbox(),
            mySwitchList(),
            mySlider(),
            myRadioButtons(),
          ],
        ),
      ),
    );
  }

  Widget myTextFieldSubmit() {
    return TextField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        labelText: 'TextInputType.text: $_userInputs',
        hintText: 'your input',
      ),
      onSubmitted: (userInput) {
        _setUserInputs(userInput);
      },
    );
  }

  Widget myTextFieldCharacterCounter() {
    return TextField(
      keyboardType: TextInputType.text,
      style: Theme.of(context).textTheme.headline5,
      decoration: InputDecoration(labelText: 'character counter: $_counter'),
      //onSubmitted: (userInput){_stringCounter(userInput);},
      onChanged: (userInput) {
        _stringCounter(userInput);
      },
    );
  }

  Widget myTextFieldNumber() {
    return TextField(
      keyboardType: TextInputType.number,
      style: Theme.of(context).textTheme.headline5,
      decoration: const InputDecoration(labelText: 'Number keyboard'),
    );
  }

  Widget myCheckbox() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "checkbox",
          style: Theme.of(context).textTheme.headline5,
        ),
        Checkbox(
          value: _isChecked,
          activeColor: Colors.green,
          onChanged: (bool? isChecked) {
            setState(() {
              _isChecked = !_isChecked;
            });
          },
        ),
      ],
    );
  }

  Widget mySwitchList() {
    return SwitchListTile(
      title: Text(
        "SwitchListTile",
        style: Theme.of(context).textTheme.headline5,
      ),
      value: _isCheckedSwitch,
      onChanged: (bool? isChecked) {
        setState(() {
          _isCheckedSwitch = !_isCheckedSwitch;
        });
      },
    );
  }

  Widget mySlider() {
    return Column(
      children: [
        Text(
          "Slider actual value: $_sliderValue",
          style: Theme.of(context).textTheme.headline5,
        ),
        Slider(
            value: _sliderValue,
            max: 100,
            divisions: 5,
            label: "Slider value: $_sliderValue",
            onChanged: (double value) {
              setState(() {
                _sliderValue = value;
              });
            }),
      ],
    );
  }

  Widget myRadioButtons() {
    return Column(
      children: [
        Text("radio choice: $_choices",
        style: Theme.of(context).textTheme.headline6,
        ),
        RadioListTile(
          title: const Text("choice one"),
            value: "choice1",
            groupValue: _choices,
            onChanged: (String? choice) {
              setState(() {
                _choices = choice!;
              });
            }),
        RadioListTile(
          title: const Text("choice two"),
            value: "choice2",
            groupValue: _choices,
            onChanged: (String? choice) {
              setState(() {
                _choices = choice!; 
              });
            }),
      ],
    );
  }
}
