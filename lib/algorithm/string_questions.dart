import 'dart:developer' as developer;

import 'package:mockito_test/constraint_utils.dart';

class StringQuestions {
  static void printDuplicateCharacters(String word) {
    var characterMap = Map<String, int>();
    for (int i = 0; i < word.split('').length; i++) {
      var char = word.split('')[i];
      if (characterMap.containsKey(char))
        characterMap[char]++;
      else
        characterMap[char] = 1;
    }
    characterMap.forEach((key, value) {
      developer.log('$key : $value',name: ConstraintUtils.TAG);
    });
  }
}
