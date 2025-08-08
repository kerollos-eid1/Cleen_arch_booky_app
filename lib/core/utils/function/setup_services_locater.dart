import 'package:clean_arch_booky_app/Features/home/Data/data_source/home_local_data_source.dart';
import 'package:clean_arch_booky_app/Features/home/Data/data_source/home_remote_data_source.dart';
import 'package:clean_arch_booky_app/Features/home/Data/repos/home_repos_impl.dart';
import 'package:clean_arch_booky_app/core/utils/api_services.dart';
import 'package:clean_arch_booky_app/main.dart';
import 'package:dio/dio.dart';

void setupServicesLocater() {
   locater.registerSingleton<HomeReposImpl>(
    HomeReposImpl(
      homeRemoteDataSource: HomeRemoteDataSourceImplmention(ApiServices(Dio())),
      homeLocalDataSource: HomeLocalDataSourceImplmention(),
    ),
  );
}