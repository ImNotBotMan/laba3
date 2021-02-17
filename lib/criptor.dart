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

///получаем результат шифровки
String getEncriptWord(text1, text2) {
  List match = [];

  ///списки с индексами каждого слова
  var first = getIndex(text1);
  var second = getIndex(text2);

  for (var i = 0; i < first.length; i++) {
    //складываем два индкса и вычитаем из результата длину алфавита
    var a = first[i] + second[i];
    var b = a - ALPHABET.length;

    ///если полученое число отрицательное, получаем его модуль
    if (b < 0) {
      b = -(b);
    }

    /// если всё ок, то вычитаем еденицу
    if (b > 0) {
      b = b - 1;
    }

    ///добавляем в конечный список
    match.add(ALPHABET[b]);
    print(match);
  }
  return match.join();
}

/// Функция получения индексы из слова
List getIndex(String text) {
  List encryptIndex = [];
  List wordList = text.toString().toLowerCase().split("");
  wordList.forEach((element) {
    encryptIndex.add(ALPHABET.indexOf(element));
  });
  return encryptIndex;
}
