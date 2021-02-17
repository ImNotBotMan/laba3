import 'dart:math';

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

List encryptWord = [];
List decryptWord = [];

// int lData;

criptor<String>(
  String string,
  int key,
  bool isCriptor,
) {
  int encryptStep;
  int decryptStep;

  print("ИСХОДНАЯ СТРОКА $string");

  List word = string.toString().toLowerCase().split("");

  for (var i = 0; i < word.length; i++) {
    switch (isCriptor) {
      case true:
        {
          encryptStep = ALPHABET.indexOf(word[i]) + key;
          if (encryptStep >= 26) {
            encryptWord
                .add(ALPHABET[key - 1 - (25 - ALPHABET.indexOf(word[i]))]);
          } else
            encryptWord.add(ALPHABET[encryptStep]);
        }
        break;
      case false:
        {
          decryptStep = ALPHABET.indexOf(word[i]) - key;
          if (decryptStep < 0) {
            decryptWord.add(ALPHABET[26 + decryptStep]);
          } else {
            decryptWord.add(ALPHABET[decryptStep]);
          }
        }
        break;
    }
    print("КОНЕЧНАЯ СТРОКА ${encryptWord.join()}");
  }
}
