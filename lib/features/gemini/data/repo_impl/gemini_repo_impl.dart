import 'package:dewsclim/core/helpers/api_interceptor.dart';
import 'package:dewsclim/core/service_result/src/api_result.dart';
import 'package:dewsclim/features/gemini/data/data_source/gemini_data_source_impl.dart';
import 'package:dewsclim/features/gemini/domain/params/climate_data_params.dart';
import 'package:dewsclim/features/gemini/domain/repo/gemini_repo.dart';

class GeminiRepoImpl extends GeminiRepo {
  final GeminiDataSourceImpl _dataSourceImpl;

  GeminiRepoImpl(this._dataSourceImpl);

  @override
  Future<ApiResult<Map<String, dynamic>>> getClimateData(
          {required ClimateDataParams params}) =>
      apiInterceptor(() => _dataSourceImpl.predictClimateData(params));
}
