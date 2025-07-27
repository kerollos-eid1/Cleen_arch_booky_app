import 'package:clean_arch_booky_app/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

// The UsCase class is a generic class that defines the structure for use cases.
// It takes a type parameter Type for the return type and Params for the input parameters.

abstract class UsCase<Type, Params> {
  Future<Either<Failure, Type>> call([Params params]);
}

// NoParams هو كلاس فارغ يستخدم عندما لا تحتاج إلى أي باراميترز لتنفيذ اليوز كيس.
class NoParams {}
