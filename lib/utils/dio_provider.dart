import 'package:dio/dio.dart';
import 'package:github_search/utils/env.dart';
import 'package:github_search/utils/logger_interceptor.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dio_provider.g.dart';

@riverpod
Dio dio(DioRef ref) {
  final dio = Dio();
  dio.options = BaseOptions(
    baseUrl: 'https://api.github.com',
    headers: {
      'Accept': 'application/vnd.github+json',
      'Authorization': 'Bearer ${Env.githubToken}',
      'X-GitHub-Api-Version': '2022-11-28',
    },
  );

  dio.interceptors.add(LoggerInterceptor());
  return dio;
}
