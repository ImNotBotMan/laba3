import 'dart:math';

import 'package:laba3/main.dart';

const List<String> ALPHABET = [
  "a",
  "b",
  "c",
  "d",
  "e",
  "f",
  "g",
  "h",
  "i",
  "j",
  "k",
  "l",
  "m",
  "n",
  "o",
  "p",
  "q",
  "r",
  "s",
  "t",
  "u",
  "v",
  "w",
  "x",
  "y",
  "z"
];

String getEncriptWord(text1, text2) {
  List match = [];
  var first = getIndex(text1);
  var second = getIndex(text2);
  for (var i = 0; i < first.length; i++) {
    var a = first[i] + second[i];
    var b = a - ALPHABET.length;
    if (b < 0) {
      b = -(b);
    }
    if (b > 0) {
      b = b - 1;
    }
    match.add(ALPHABET[b]);
    print(match);
  }
  return match.join();
}

List getIndex(String text) {
  List encryptIndex = [];
  List wordList = text.toString().toLowerCase().split("");
  wordList.forEach((element) {
    encryptIndex.add(ALPHABET.indexOf(element));
  });
  return encryptIndex;
}
