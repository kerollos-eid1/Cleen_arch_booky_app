import 'package:clean_arch_booky_app/Features/home/Domain/entities/home_entity.dart';
// This abstract class defines the contract for the HomeRemoteDataSource.
// It declares methods for fetching featured and newest books from a remote source.


abstract class HomeRemoteDataSource {

  Future<List<HomeEntity>> fetchFeaturedBooks();
  Future<List<HomeEntity>> fetchNewestBooks();
}


// This class implements the HomeRemoteDataSource interface.
// It provides concrete implementations for the methods declared in the interface.

 class HomeRemoteDataSourceImplmention extends  HomeRemoteDataSource {
  @override
  Future<List<HomeEntity>> fetchFeaturedBooks() {
    
    throw UnimplementedError();
  }
 
  @override
  Future<List<HomeEntity>> fetchNewestBooks() {
   
    throw UnimplementedError();
  }

}