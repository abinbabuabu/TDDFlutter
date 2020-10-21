import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:test_driven/features/number_trivia/domain/entities/number_trivia.dart';

class NumberTriviaModel extends NumberTrivia {
  NumberTriviaModel({@required String text, @required int number})
      : super(text: text, number: number);


  factory NumberTriviaModel.fromJson(Map<String, dynamic> json){
    return NumberTriviaModel(text: json['text'], number: json['number']);
  }
}
