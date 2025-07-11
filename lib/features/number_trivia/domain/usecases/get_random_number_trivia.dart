import 'package:dartz/dartz.dart';
import 'package:number_trivia_clean_arch/core/errors/failure.dart';
import 'package:number_trivia_clean_arch/core/usecases/base_use_case.dart';
import 'package:number_trivia_clean_arch/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:number_trivia_clean_arch/features/number_trivia/domain/repositories/number_trivia_repository.dart';

class GetRandomNumberTrivia extends BaseUseCase<NumberTrivia, NoParams> {
  final NumberTriviaRepository repository;

  GetRandomNumberTrivia(this.repository);

  @override
  Future<Either<Failure, NumberTrivia>> call(NoParams params) async {
    return await repository.getRandomNumberTrivia();
  }
}
