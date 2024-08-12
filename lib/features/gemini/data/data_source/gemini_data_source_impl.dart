import 'package:dewsclim/core/dependency_injection/di_providers.dart';
import 'package:dewsclim/core/services/api/api_client.dart';
import 'package:dewsclim/features/gemini/data/data_source/gemini_data_source.dart';
import 'package:dewsclim/features/gemini/domain/params/climate_data_params.dart';
import 'package:dewsclim/src/app_constants/api_constants.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GeminiDataSourceImpl extends GeminiDataSource {
  final Ref _ref;

  late final ApiClient _apiClient = _ref.watch(apiClientProvider);

  GeminiDataSourceImpl(this._ref);

  @override
  Future<Map<String, dynamic>> predictClimateData(
      ClimateDataParams params) async {
    final response = await _apiClient.get(
      ApiConstants.predictClimate,
      queryParameters: params.toJson(),
    );
    return response.data;
  }
}
