import 'package:app_proverbs/reader.dart';
import 'package:flutter/material.dart';
import 'package:tcard/tcard.dart';

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
        primarySwatch: Colors.yellow,
      ),
      home: const MyHomePage(title: 'Provérbios todo dia'),
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
  List<String> backgroundPath = [
    "rsc/wallpaper.png",
    "",
    "",
  ];

  //reader with 5 proverbs
  _printMyText() async {
    Reader reader = Reader();
    List<String> myTexts = await reader.getRandomTexts(5);
    // print(myTexts);
    return myTexts;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(backgroundPath[0]),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.titleMedium,
                children: const [
                  TextSpan(
                    text: ' leia 5 provérbios e mude sua vida!',
                    style: TextStyle(color: Colors.black54, fontSize: 19),
                  ),
                ],
              ),
            ),
            FutureBuilder(
              future: _printMyText(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (!snapshot.hasData) {
                  return const Text("Não foi encontrado nenhum provérbio.. :/");
                } else if (snapshot.hasError) {
                  return const Text("OPS... Error :(");
                } else {
                  return myCard(snapshot.data);
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget myCard(List<String> data) {
    return TCard(
      lockYAxis: true,
      cards: List.generate(
        data.length,
        (index) => Container(
          color: Theme.of(context).backgroundColor,
          child: Center(
            child: Text(
              data[index],
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
        ),
      ),
    );
  }
}
