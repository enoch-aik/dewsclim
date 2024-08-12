import 'package:json_annotation/json_annotation.dart';

part 'yield_calculator_params.g.dart';
@JsonSerializable()
class YieldCalculatorParams {

  final int fieldSize;
  final String soilType;
  final String seedVariety;
  final String fertilizer;
  final String pesticide;
  final bool isIrrigated;
  final String croppingType;
  final String state;
  final int year;

  YieldCalculatorParams({ required this.fieldSize, required this.soilType, required this.seedVariety, required this.fertilizer, required this.pesticide, required this.isIrrigated, required this.croppingType, required this.state, required this.year});

factory YieldCalculatorParams.fromJson(Map<String, dynamic> json) => _$YieldCalculatorParamsFromJson(json);

  Map<String, dynamic> toJson() => _$YieldCalculatorParamsToJson(this);
}
