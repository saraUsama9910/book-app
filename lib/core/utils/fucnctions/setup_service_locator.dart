import 'package:book_app/Features/home/data/data_sources/home_local_data_source.dart';
import 'package:book_app/Features/home/data/data_sources/home_remote_data_source.dart';
import 'package:book_app/Features/home/data/repos/home_repo_impl.dart';
import 'package:book_app/core/utils/api_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setUpServiceLocator() {
  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      homeLocalDataSource: HomeLocalDataSourceImp(),
      homeRepoDataSource: HomeRepoDataSourceImp(
        ApiService(
          Dio(),
        ),
      ),
    ),
  );
}
