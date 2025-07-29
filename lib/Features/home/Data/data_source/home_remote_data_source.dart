import 'package:clean_arch_booky_app/Features/home/Data/models/book_models/book_models.dart';
import 'package:clean_arch_booky_app/Features/home/Domain/entities/home_entity.dart';
import 'package:clean_arch_booky_app/core/utils/api_services.dart';
// This abstract class defines the contract for the HomeRemoteDataSource.
// It declares methods for fetching featured and newest books from a remote source.

abstract class HomeRemoteDataSource {
  Future<List<HomeEntity>> fetchFeaturedBooks();
  Future<List<HomeEntity>> fetchNewestBooks();
}

class HomeRemoteDataSourceImplmention
    extends HomeRemoteDataSource {
  final ApiServices apiServices;

  HomeRemoteDataSourceImplmention(this.apiServices);

    // This method fetches featured books from a remote source. 
  // It uses the ApiServices to make a GET request to the specified endpoint.
  @override
  Future<List<HomeEntity>> fetchFeaturedBooks() async {
    var data = await apiServices.get(
      endPoint:
          'volumes?q=programming&filtering=free-books',
    );
    List<HomeEntity> books = getBooksList(data);
    return books;
  }

// This method fetches the newest books from a remote source.
// It uses the ApiServices to make a GET request to the specified endpoint.
  @override
  Future<List<HomeEntity>> fetchNewestBooks() async{
   var data = await apiServices.get(
      endPoint:
          'volumes?q=programming&filtering=free-books&sorting=newest',
    );
    List<HomeEntity> books = getBooksList(data);
    return books;
  }
// This method converts the JSON data into a list of HomeEntity objects.
  // It iterates through the items in the data and creates Bookmodels from each item.
  List<HomeEntity> getBooksList(Map<String, dynamic> data) {
    List<HomeEntity> books = [];
    for (var bookMap in data['items']) {
      books.add(Bookmodels.fromJson(bookMap));
    }
    return books;
  }
}
// This implementation of HomeRemoteDataSource uses the ApiServices to fetch data from a remote API.