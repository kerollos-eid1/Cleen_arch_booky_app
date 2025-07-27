import 'package:clean_arch_booky_app/Features/home/Donain/entities/home_entity.dart';

abstract class HomeRepo {
  Future<List<HomeEntity>> fetchFeaturedBooks();
  Future<List<HomeEntity>> fetchNewestBooks();
}
