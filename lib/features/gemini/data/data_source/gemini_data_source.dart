import 'package:dewsclim/features/gemini/domain/params/climate_data_params.dart';

abstract class GeminiDataSource{
  Future<Map<String,dynamic>> predictClimateData(ClimateDataParams params);
  


}