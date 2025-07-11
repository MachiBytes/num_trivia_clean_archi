import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:number_trivia_clean_arch/core/errors/failure.dart';
import 'package:number_trivia_clean_arch/core/usecases/base_use_case.dart';
import 'package:number_trivia_clean_arch/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:number_trivia_clean_arch/features/number_trivia/domain/repositories/number_trivia_repository.dart';

class GetConcreteNumberTrivia extends BaseUseCase<NumberTrivia, Params> {
  final NumberTriviaRepository repository;

  GetConcreteNumberTrivia(this.repository);

  @override
  Future<Either<Failure, NumberTrivia>> call(Params params) {
    return repository.getConcreteNumberTrivia(params.number);
  }
}

class Params extends Equatable {
  final int number;

  const Params({required this.number});

  @override
  List<Object?> get props => [number];

  @override
  String toString() => 'Params(number: $number)';
}
