import 'package:dewsclim/core/service_result/src/api_result.dart';
import 'package:dewsclim/features/gemini/domain/params/climate_data_params.dart';

abstract class GeminiRepo {


  Future<ApiResult<Map<String, dynamic>>> getClimateData({required ClimateDataParams params});


}