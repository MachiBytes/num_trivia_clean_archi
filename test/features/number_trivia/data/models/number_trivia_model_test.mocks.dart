// Mocks generated by Mockito 5.4.6 from annotations
// in number_trivia_clean_arch/test/features/number_trivia/data/models/number_trivia_model_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:mockito/mockito.dart' as _i1;
import 'package:mockito/src/dummies.dart' as _i3;
import 'package:number_trivia_clean_arch/features/number_trivia/data/models/number_trivia_model.dart'
    as _i2;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: must_be_immutable
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

/// A class which mocks [NumberTriviaModel].
///
/// See the documentation for Mockito's code generation for more information.
class MockNumberTriviaModel extends _i1.Mock implements _i2.NumberTriviaModel {
  MockNumberTriviaModel() {
    _i1.throwOnMissingStub(this);
  }

  @override
  int get number =>
      (super.noSuchMethod(Invocation.getter(#number), returnValue: 0) as int);

  @override
  String get text =>
      (super.noSuchMethod(
            Invocation.getter(#text),
            returnValue: _i3.dummyValue<String>(this, Invocation.getter(#text)),
          )
          as String);

  @override
  List<Object?> get props =>
      (super.noSuchMethod(Invocation.getter(#props), returnValue: <Object?>[])
          as List<Object?>);

  @override
  Map<String, dynamic> toJson() =>
      (super.noSuchMethod(
            Invocation.method(#toJson, []),
            returnValue: <String, dynamic>{},
          )
          as Map<String, dynamic>);
}
