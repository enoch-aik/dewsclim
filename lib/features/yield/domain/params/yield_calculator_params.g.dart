// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'yield_calculator_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

YieldCalculatorParams _$YieldCalculatorParamsFromJson(
        Map<String, dynamic> json) =>
    YieldCalculatorParams(
      fieldSize: (json['fieldSize'] as num).toInt(),
      soilType: json['soilType'] as String,
      seedVariety: json['seedVariety'] as String,
      fertilizer: json['fertilizer'] as String,
      pesticide: json['pesticide'] as String,
      isIrrigated: json['isIrrigated'] as bool,
      croppingType: json['croppingType'] as String,
      state: json['state'] as String,
      year: (json['year'] as num).toInt(),
    );

Map<String, dynamic> _$YieldCalculatorParamsToJson(
        YieldCalculatorParams instance) =>
    <String, dynamic>{
      'fieldSize': instance.fieldSize,
      'soilType': instance.soilType,
      'seedVariety': instance.seedVariety,
      'fertilizer': instance.fertilizer,
      'pesticide': instance.pesticide,
      'isIrrigated': instance.isIrrigated,
      'croppingType': instance.croppingType,
      'state': instance.state,
      'year': instance.year,
    };
