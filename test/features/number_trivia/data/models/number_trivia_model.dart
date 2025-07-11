import 'package:flutter_test/flutter_test.dart';
import 'package:number_trivia_clean_arch/features/number_trivia/domain/entities/number_trivia.dart';

void main() {
  final tNumberTriviaModel = NumberTriviaModel(number: 1, text: 'test');

  test('should be a subclass of NumberTrivia entity', () async {
    // assert
    expect(tNumberTriviaModel, isA<NumberTrivia>());
  });
}
