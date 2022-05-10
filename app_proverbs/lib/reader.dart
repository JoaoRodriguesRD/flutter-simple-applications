import 'dart:math';
import 'package:flutter/services.dart' show rootBundle;

class Reader {
  List<String> myTexts = [];

  getRandomTexts(int number) async{
    List<String> selected = [];
    String response = await rootBundle.loadString('rsc/proverbs_pt.txt');
    List<String> splitted = response.split('\n');
    myTexts = splitted;
    Random r = Random();
    for (var i = 0; i < number; i++) {
      selected.add(myTexts.elementAt(r.nextInt(myTexts.length)));
    }
    return selected;
  }
}
