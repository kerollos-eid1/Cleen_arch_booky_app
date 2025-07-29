import 'package:clean_arch_booky_app/Features/home/Domain/entities/home_entity.dart';

abstract class HomeLocalDataSource {
  // Define methods for local data source if needed
  List<HomeEntity> fetchFeaturedBooks();
  List<HomeEntity> fetchNewestBooks();
}

class HomeLocalDataSourceImplmention
    extends HomeLocalDataSource {
  @override
  List<HomeEntity> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }

  @override
  List<HomeEntity> fetchNewestBooks() {
    // TODO: implement fetchNewestBooks
    throw UnimplementedError();
  }
}
