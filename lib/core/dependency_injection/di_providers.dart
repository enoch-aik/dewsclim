import 'dart:io';

import 'package:dewsclim/core/config/api_config/api_config.dart';
import 'package:dewsclim/core/services/api/api_client.dart';
import 'package:dewsclim/src/app_constants/api_constants.dart';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final apiConfigProvider = Provider<ApiConfig>((ref) {
  return ApiConfig(
    ApiConstants.baseUrl,
    options: Options(
      headers: {
        HttpHeaders.contentTypeHeader: 'application/json',
      },
    ),
  );
});

final apiClientProvider = Provider(
  (ref) {
    final apiConfig = ref.watch(apiConfigProvider);
    return ApiClient(apiConfig);
  },
);
