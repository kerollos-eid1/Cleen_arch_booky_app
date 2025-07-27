import 'package:clean_arch_booky_app/Features/home/Donain/entities/home_entity.dart';
import 'package:clean_arch_booky_app/Features/home/Donain/repo/home_repo.dart';
import 'package:clean_arch_booky_app/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

class FetchFeaturedBooksUseCase {
  final HomeRepo homeRepo;

  FetchFeaturedBooksUseCase(this.homeRepo);

  Future<Either<Failure, List<HomeEntity>>>
  fetchFeaturedBooks() {
    return homeRepo.fetchFeaturedBooks();
  }
}
