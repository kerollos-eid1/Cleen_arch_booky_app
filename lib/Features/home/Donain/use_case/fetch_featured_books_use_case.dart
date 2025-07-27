import 'package:clean_arch_booky_app/Features/home/Donain/entities/home_entity.dart';
import 'package:clean_arch_booky_app/Features/home/Donain/repo/home_repo.dart';
import 'package:clean_arch_booky_app/core/errors/failure.dart';
import 'package:clean_arch_booky_app/core/use_case/use_case.dart';
import 'package:dartz/dartz.dart';

// This use case is responsible for fetching featured books from the repository.
// It extends a generic UseCase class that defines the contract for use cases in the application.
class FetchFeaturedBooksUseCase
    extends UsCase<List<HomeEntity>, NoParams> {
  final HomeRepo homeRepo;

  FetchFeaturedBooksUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<HomeEntity>>> call([
    NoParams? params,
  ]) async {
    return await homeRepo.fetchFeaturedBooks();
  }
}
