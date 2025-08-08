import 'package:clean_arch_booky_app/Features/home/Data/data_source/home_local_data_source.dart';
import 'package:clean_arch_booky_app/Features/home/Data/data_source/home_remote_data_source.dart';
import 'package:clean_arch_booky_app/Features/home/Data/repos/home_repos_impl.dart';
import 'package:clean_arch_booky_app/core/utils/api_services.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final locater = GetIt.instance;
void setupServicesLocater() {
  // Registering the ApiServices and HomeReposImpl with their dependencies
  
  locater.registerSingleton<ApiServices>(ApiServices(Dio()));

  // Registering the HomeReposImpl with its dependencies
  locater.registerSingleton<HomeReposImpl>(
    HomeReposImpl(
      homeRemoteDataSource: HomeRemoteDataSourceImplmention(
        locater.get<ApiServices>(),
      ),
      homeLocalDataSource: HomeLocalDataSourceImplmention(),
    ),
  );
}
