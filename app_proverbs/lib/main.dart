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
  int _counter = 0;
  List<String> frases = [
    "Dê um peixe a um homem e você o alimentará por um dia. Ensine um homem a pescar e você o alimentará por toda a vida",
    "Deus ajuda quem se ajuda",
    "Aquele que ama o mundo como seu corpo pode ser confiado com o império. Lao Tzu, filósofo chinês (604 aC - c. 531 aC)",
    "A história se repete",
    "Veja um centavo e pegue-o, o dia todo você terá boa sorte; ver um centavo e deixá-lo descansar, má sorte você terá o dia todo",
    "",
  ];
  List<String> backgroundUrls = [
    "https://i0.wp.com/www.luamaralstudio.com/wp-content/uploads/2022/02/aesthetic-yellow-phone-wallpaper-lu-amaral-studio-5-1-scaled.jpg?resize=980%2C1742&ssl=1",
    "",
    "",
  ];
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(backgroundUrls[0]),
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
              TCard(
                lockYAxis: true,
                cards: List.generate(
                  5,
                  (index) => Container(
                    color: Theme.of(context).backgroundColor,
                    child: Center(
                      child: Text(
                        frases[index],
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
