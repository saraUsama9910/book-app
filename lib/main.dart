import 'package:book_app/Features/home/data/data_sources/home_local_data_source.dart';
import 'package:book_app/Features/home/data/data_sources/home_remote_data_source.dart';
import 'package:book_app/Features/home/data/repos/home_repo_impl.dart';
import 'package:book_app/Features/home/domain/entities/book_entity.dart';
import 'package:book_app/Features/home/domain/use_cases/fetch_featured_books_use_case.dart';
import 'package:book_app/Features/home/domain/use_cases/fetch_newest_books_use_case.dart';
import 'package:book_app/Features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:book_app/Features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:book_app/Features/splash/peresntation/views/splash_view.dart';
import 'package:book_app/constants.dart';
import 'package:book_app/core/utils/api_service.dart';
import 'package:book_app/core/utils/app_router.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  await Hive.initFlutter();

  Hive.registerAdapter(BookEntityAdapter());

  await Hive.openBox<BookEntity>(kFeaturedBox);
  await Hive.openBox<BookEntity>(kNewestBox);
  runApp(const BookApp());
}

class BookApp extends StatelessWidget {
  const BookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) {
            return FeaturedBooksCubit(
              FetchFeaturedBooksUseCase(
                HomeRepoImpl(
                  homeLocalDataSource: HomeLocalDataSourceImp(),
                  homeRepoDataSource: HomeRepoDataSourceImp(
                    ApiService(
                      Dio(),
                    ),
                  ),
                ),
                HomeRepoImpl(
                  homeLocalDataSource: HomeLocalDataSourceImp(),
                  homeRepoDataSource: HomeRepoDataSourceImp(
                    ApiService(
                      Dio(),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
        BlocProvider(
          create: (context) {
            return NewestBooksCubit(
              FetchNewestBooksUseCase(
                HomeRepoImpl(
                  homeLocalDataSource: HomeLocalDataSourceImp(),
                  homeRepoDataSource: HomeRepoDataSourceImp(
                    ApiService(
                      Dio(),
                    ),
                  ),
                ),
                HomeRepoImpl(
                  homeLocalDataSource: HomeLocalDataSourceImp(),
                  homeRepoDataSource: HomeRepoDataSourceImp(
                    ApiService(
                      Dio(),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
        ),
      ),
    );
  }
}

final _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
  ],
);
