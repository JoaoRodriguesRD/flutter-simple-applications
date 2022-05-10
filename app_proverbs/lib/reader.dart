import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class Reader {
  List<String> myTexts = [];

  // getText() async{
  //   // List<String> contents = File('./rsc/proverbs_pt.txt').readAsLinesSync();
  //   // var contents = getData();
  //   // print("Look the contents:");
  //   // print(contents);
  // }
  readText() async {
    String response;
    response = await rootBundle.loadString('rsc/proverbs_pt.txt');
    // print(response);
    LineSplitter ls = LineSplitter();
    List<String> splitted = response.split('\n');
    // List<String> splitted = ls.convert(response);
    // Random r = Random();
    // print(r.nextInt(2));
    // print(splitted.length);
    // print(splitted.elementAt(r.nextInt(splitted.length)));
    _setMyTexts(splitted);
    return await splitted.elementAt(0);
  }

  void _setMyTexts(List<String> value){
    myTexts = value;
  }

  getRandomTexts(int number) async{
    List<String> selected = [];
    String response;
    response = await rootBundle.loadString('rsc/proverbs_pt.txt');
    LineSplitter ls = LineSplitter();
    List<String> splitted = response.split('\n');
    myTexts = splitted;
    Random r = Random();
    for (var i = 0; i < number; i++) {
      selected.add(myTexts.elementAt(r.nextInt(myTexts.length)));
      print("printar $i vezes");
    }
    return selected;
  }
}
