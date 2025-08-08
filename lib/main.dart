import 'package:clean_arch_booky_app/Features/home/Data/repos/home_repos_impl.dart';
import 'package:clean_arch_booky_app/Features/home/Domain/entities/book_entity.dart';
import 'package:clean_arch_booky_app/Features/home/Domain/use_case/fetch_featured_books_use_case.dart';
import 'package:clean_arch_booky_app/Features/home/Domain/use_case/fetch_newest_books_use_case.dart';
import 'package:clean_arch_booky_app/Features/home/Presentation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:clean_arch_booky_app/Features/home/Presentation/manger/newest_books_cubit/newest_books_cubit.dart';
import 'package:clean_arch_booky_app/constants.dart';
import 'package:clean_arch_booky_app/core/utils/app_router.dart';
import 'package:clean_arch_booky_app/core/utils/function/setup_services_locater.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(BookEntityAdapter());
  setupServicesLocater();
  await Hive.openBox<BookEntity>(kFeaturedBox);
  await Hive.openBox<BookEntity>(kNewestBox);
  runApp(const BookApp());
}

final locater = GetIt.instance;

class BookApp extends StatelessWidget {
  const BookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) {
            return FeaturedBooksCubit(
              FetchFeaturedBooksUseCase(locater.get<HomeReposImpl>()),
            );
          },
        ),
        BlocProvider(
          create: (context) {
            return NewestBooksCubit(
              FetchNewestBooksUseCase(locater.get<HomeReposImpl>()),
            );
          },
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        // this themedata is dark in background in all app
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: const Color.fromARGB(255, 4, 3, 21),
          textTheme: GoogleFonts.montserratTextTheme(
            ThemeData.dark().textTheme,
          ),
        ),
      ),
    );
  }
}
