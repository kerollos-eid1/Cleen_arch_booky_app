import 'package:clean_arch_booky_app/Features/home/Domain/entities/book_entity.dart';
import 'package:clean_arch_booky_app/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookEntity>>>
  fetchFeaturedBooks();
  Future<Either<Failure, List<BookEntity>>>
  fetchNewestBooks();
}
