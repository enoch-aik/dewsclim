import 'package:dewsclim/features/yield/data/models/yield_res_model.dart';
import 'package:dewsclim/features/yield/domain/params/yield_calculator_params.dart';

abstract class YieldDataSource{

  Future<YieldResModel> getYieldEstimate(YieldCalculatorParams params);

}