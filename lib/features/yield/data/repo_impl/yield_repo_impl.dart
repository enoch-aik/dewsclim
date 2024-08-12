import 'package:dewsclim/core/helpers/api_interceptor.dart';
import 'package:dewsclim/core/service_result/src/api_result.dart';
import 'package:dewsclim/features/yield/data/data_source/yield_data_source.dart';
import 'package:dewsclim/features/yield/data/models/yield_res_model.dart';
import 'package:dewsclim/features/yield/domain/params/yield_calculator_params.dart';
import 'package:dewsclim/features/yield/domain/repo/yield_repo.dart';

class YieldRepoImpl extends YieldRepo {
  final YieldDataSource _dataSource;

  YieldRepoImpl(this._dataSource);

  @override
  Future<ApiResult<YieldResModel>> getYieldEstimate(YieldCalculatorParams params) =>
      apiInterceptor(() => _dataSource.getYieldEstimate(params));
}
