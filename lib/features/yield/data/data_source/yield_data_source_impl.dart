import 'package:dewsclim/core/dependency_injection/di_providers.dart';
import 'package:dewsclim/core/services/api/api_client.dart';
import 'package:dewsclim/features/yield/data/data_source/yield_data_source.dart';
import 'package:dewsclim/features/yield/data/models/yield_res_model.dart';
import 'package:dewsclim/features/yield/domain/params/yield_calculator_params.dart';
import 'package:dewsclim/src/app_constants/api_constants.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class YieldDataSourceImpl extends YieldDataSource {
  final Ref _ref;

  YieldDataSourceImpl(this._ref);

  late final ApiClient _apiClient = _ref.read(apiClientProvider);

  @override
  Future<YieldResModel> getYieldEstimate(YieldCalculatorParams params) async {
    final response = await _apiClient.post(ApiConstants.predictYield,
        data: params.toJson());

    return YieldResModel.fromJson(response.data['prediction']);
  }
}
