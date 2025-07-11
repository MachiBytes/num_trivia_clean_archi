import 'package:dartz/dartz.dart';
import 'package:number_trivia_clean_arch/core/errors/failure.dart';
import 'package:number_trivia_clean_arch/features/number_trivia/domain/entities/number_trivia.dart';

abstract class NumberTriviaRepository {
  /// Gets trivia for a specific [number].
  ///
  /// Throws a [ServerException] for server-related issues.
  /// Throws a [CacheException] for cache-related issues.
  Future<Either<Failure, NumberTrivia>> getConcreteNumberTrivia(int number);

  /// Gets trivia for a random number.
  ///
  /// Throws a [ServerException] for server-related issues.
  /// Throws a [CacheException] for cache-related issues.
  Future<Either<Failure, NumberTrivia>> getRandomNumberTrivia();
}
