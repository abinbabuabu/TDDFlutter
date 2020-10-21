import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:test_driven/features/number_trivia/data/models/number_trivia_model.dart';

import '../../../../fixtures/fixture_reader.dart';

void main(){
  final tNumberTriviaModel = NumberTriviaModel(text: "Test text" , number: 1);
  test('Should be a Subclass of NumberTrivia entity', () async {
    expect(tNumberTriviaModel, isA<NumberTriviaModel>());
  });

  group("fromJson", (){
    test("should return a valid model when the Json Number is an Integer", () async{
      // arrange
      final Map<String,dynamic> jsonMap = jsonDecode(fixture('trivia.json'));
      // act
      final result = NumberTriviaModel.fromJson(jsonMap);
      // assert
      expect(result,tNumberTriviaModel);
    });

  });
}