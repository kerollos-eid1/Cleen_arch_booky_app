import 'package:clean_arch_booky_app/Features/home/Donain/entities/home_entity.dart';
import 'package:clean_arch_booky_app/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either< Failure, List<HomeEntity>>> fetchFeaturedBooks();
  Future<Either< Failure, List<HomeEntity>>> fetchNewestBooks();
}
