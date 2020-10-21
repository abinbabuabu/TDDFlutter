import 'package:test_driven/features/number_trivia/data/models/number_trivia_model.dart';

abstract class NumberTriviaRemoteDataSource{
  /// This throws a [ServerException] While the number is not returned
 Future<NumberTriviaModel> getConcreteNumberTrivia(int number);

 ///This also throws [ServerException] while accessing the server
 Future<NumberTriviaModel> getRandomNumberTrivia();
}
