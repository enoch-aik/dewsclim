import 'package:dewsclim/core/service_exceptions/src/api_exceptions.dart';
import 'package:dewsclim/core/service_result/src/api_result.dart';
import 'package:flutter/foundation.dart';

typedef TypeDef = Function();

Future<ApiResult<T>> apiInterceptor<T>(TypeDef func) async {
  try {
    final result = await func();

    return ApiResult.success(data: result);
  } on Error catch (e) {
    debugPrint(e.stackTrace.toString());
    return ApiResult.apiFailure(
      error: ApiExceptions.getDioException(e)!,
      statusCode: -1,
    );
  } catch (e) {
    debugPrint(e.toString());
    return ApiResult.apiFailure(
      error: ApiExceptions.getDioException(e)!,
      statusCode: -1,
    );
  }
}

ApiResult<T> streamInterceptor<T>(TypeDef func) {
  try {
    final result = func();

    return ApiResult.success(data: result);
  } on Error catch (e) {
    debugPrint(e.stackTrace.toString());
    return ApiResult.apiFailure(
      error: ApiExceptions.getDioException(e)!,
      statusCode: -1,
    );
  } catch (e) {
    debugPrint(e.toString());
    return ApiResult.apiFailure(
      error: ApiExceptions.getDioException(e)!,
      statusCode: -1,
    );
  }
}
