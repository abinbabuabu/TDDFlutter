import 'package:test_driven/features/number_trivia/data/models/number_trivia_model.dart';

abstract class NumberTriviaLocalDataSources {
  /// Gets the cached [NumberTriviaModel] which was cached the last time the user had an internet connection
  /// Throws [NoLocalDataException] if no data is present
  Future<NumberTriviaModel> getLastNumberTrivia();
  Future<void> cacheNumberTrivia(int triviaToCache);
}