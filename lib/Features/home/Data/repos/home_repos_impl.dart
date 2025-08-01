import 'package:clean_arch_booky_app/Features/home/Data/data_source/home_local_data_source.dart';
import 'package:clean_arch_booky_app/Features/home/Data/data_source/home_remote_data_source.dart';
import 'package:clean_arch_booky_app/Features/home/Domain/entities/book_entity.dart';
import 'package:clean_arch_booky_app/Features/home/Domain/repo/home_repo.dart';
import 'package:clean_arch_booky_app/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

class HomeReposImpl extends HomeRepo {
  final HomeRemoteDataSource homeRemoteDataSource;
  final HomeLocalDataSource homeLocalDataSource;
  HomeReposImpl({
    required this.homeRemoteDataSource,
    required this.homeLocalDataSource,
  });
  @override
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks() async {
    try {
      // First, try to fetch books from local data source
      // If local data source is empty, then fetch from remote data source
      var booklist = homeLocalDataSource.fetchFeaturedBooks();
      if (booklist.isNotEmpty) {
        return right(booklist);
      }
      // Fetching books from remote data source
      var books = await homeRemoteDataSource.fetchFeaturedBooks();
      return right(books);
    } catch (e) {
      return left(Failure());
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> fetchNewestBooks() async {
    try {
      // First, try to fetch books from local data source
      // If local data source is empty, then fetch from remote data source
      var booklist = homeLocalDataSource.fetchNewestBooks();
      if (booklist.isNotEmpty) {
        return right(booklist);
      }
      // Fetching books from remote data source
      var books = await homeRemoteDataSource.fetchNewestBooks();
      return right(books);
    } catch (e) {
      return left(Failure());
    }
  }
}
