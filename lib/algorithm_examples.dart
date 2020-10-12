import 'package:flutter/material.dart';
import 'package:mockito_test/algorithm/string_questions.dart';

class AlgorithmExamples extends StatelessWidget {

  Widget _button(String name,VoidCallback callback){
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: MaterialButton(
        color: Colors.black54,
        onPressed: callback,
        minWidth: double.infinity,
        child: Text(name,style: TextStyle(color: Colors.white),),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Data Structure and Algorithm'),),
      body: ListView(
        children: [
          _button('Print Duplicate Characters', () {StringQuestions.printDuplicateCharacters("FLUTTER");})

        ],
      ),
    );
  }
}
