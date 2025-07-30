import 'package:clean_arch_booky_app/Features/home/Data/models/book_models/book_models.dart';
import 'package:clean_arch_booky_app/Features/home/Domain/entities/book_entity.dart';
import 'package:clean_arch_booky_app/constants.dart';
import 'package:clean_arch_booky_app/core/utils/api_services.dart';
import 'package:clean_arch_booky_app/core/utils/function/save_books_data.dart';

// This abstract class defines the contract for the HomeRemoteDataSource.
// It declares methods for fetching featured and newest books from a remote source.

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> fetchFeaturedBooks();
  Future<List<BookEntity>> fetchNewestBooks();
}

class HomeRemoteDataSourceImplmention
    extends HomeRemoteDataSource {
  final ApiServices apiServices;

  HomeRemoteDataSourceImplmention(this.apiServices);

  // This method fetches featured books from a remote source.
  // It uses the ApiServices to make a GET request to the specified endpoint.
  @override
  Future<List<BookEntity>> fetchFeaturedBooks() async {
    var data = await apiServices.get(
      endPoint:
          'volumes?q=programming&filtering=free-books',
    );
    List<BookEntity> books = getBooksList(data);
    // save data locally using Hive
    saveBooksData(books, kFeaturedBox);
    return books;
  }

  // This method fetches the newest books from a remote source.
  // It uses the ApiServices to make a GET request to the specified endpoint.
  @override
  Future<List<BookEntity>> fetchNewestBooks() async {
    var data = await apiServices.get(
      endPoint:
          'volumes?q=programming&filtering=free-books&sorting=newest',
    );
    List<BookEntity> books = getBooksList(data);
    return books;
  }

  // This method converts the JSON data into a list of HomeEntity objects.
  // It iterates through the items in the data and creates Bookmodels from each item.
  List<BookEntity> getBooksList(Map<String, dynamic> data) {
    List<BookEntity> books = [];
    for (var bookMap in data['items']) {
      books.add(Bookmodels.fromJson(bookMap));
    }
    return books;
  }
}
// This implementation of HomeRemoteDataSource uses the ApiServices to fetch data from a remote API.