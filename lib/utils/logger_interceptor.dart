import 'package:dio/dio.dart';
import 'package:github_search/utils/logger.dart';

/// dio用LoggerInterceptor
class LoggerInterceptor implements Interceptor {
  final stopwatches = <String, Stopwatch>{};

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final url = '${options.baseUrl}${options.path}';
    stopwatches[url] = Stopwatch()..start();
    logger.i('🌍 Request: $url');
    return handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    final url =
        '${response.requestOptions.baseUrl}${response.requestOptions.path}';
    _logMessageAndClearStopwatch(
        response.statusCode, url, '⬅️ Received response');
    if (response.requestOptions.queryParameters.isNotEmpty) {
      logger.i('Query params: ${response.requestOptions.queryParameters}');
    }
    return handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    final url = err.requestOptions.uri.toString();
    _logMessageAndClearStopwatch(null, url, '❌ Received error');
    logger.w('❌ Response Error: ${err.response?.data}');
    return handler.next(err);
  }

  void _logMessageAndClearStopwatch(
      int? statusCode, String url, String message) {
    final stopwatch = stopwatches[url];
    if (stopwatch != null) {
      stopwatch.stop();
      _logResponse(statusCode, stopwatch.elapsedMilliseconds, url);
      stopwatches.remove(url);
    } else {
      logger.i(message);
    }
  }

  void _logResponse(int? statusCode, int milliseconds, String url) {
    final emoji = switch (statusCode) {
      != null && >= 200 && < 300 => '✅',
      != null && >= 300 && < 400 => '🟠',
      _ => '❌'
    };
    if (statusCode != null) {
      logger.i('$emoji $statusCode $emoji | ${milliseconds}ms | $url');
    } else {
      logger.i('$emoji | ${milliseconds}ms | $url');
    }
  }
}
