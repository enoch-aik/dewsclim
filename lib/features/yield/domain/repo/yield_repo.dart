import 'package:dewsclim/core/service_result/service_result.dart';
import 'package:dewsclim/features/yield/data/models/yield_res_model.dart';
import 'package:dewsclim/features/yield/domain/params/yield_calculator_params.dart';

abstract class YieldRepo {
  Future<ApiResult<YieldResModel>> getYieldEstimate(
      YieldCalculatorParams params);
}
