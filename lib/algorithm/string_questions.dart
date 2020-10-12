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

  static void firstNonRepeatedCharacter(String word){
    var characterMap = Map<String, int>();
    for (int i = 0; i < word.split('').length; i++) {
      var char = word.split('')[i];
      if (characterMap.containsKey(char))
        characterMap[char]++;
      else
        characterMap[char] = 1;
    }
    characterMap.removeWhere((key, value) => value > 1);
    if(characterMap.length==0)
      throw "All characters all duplicated";
    developer.log('${characterMap.keys.toList()[0]}',name: ConstraintUtils.TAG);
  }

  static void reverseStringRecursively(String word){
    var reverseStr = _reverseRecursively(word);
    developer.log(reverseStr,name: ConstraintUtils.TAG);

    //Simple method
    var reverse = word.split('').reversed.join();

    //Simple and faster
    var reversed2=String.fromCharCodes(word.codeUnits.reversed);
  }

  static String _reverseRecursively(String str){
    if(str.length<2)
      return str;
    return _reverseRecursively(str.substring(1))+ str[0];
  }
}
