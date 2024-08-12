// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'yield_res_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

YieldResModel _$YieldResModelFromJson(Map<String, dynamic> json) =>
    YieldResModel(
      yieldEstimate: (json['yieldEstimate'] as num?)?.toInt(),
      explanation: json['explanation'] as String?,
      recommendations: (json['recommendations'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$YieldResModelToJson(YieldResModel instance) =>
    <String, dynamic>{
      'yieldEstimate': instance.yieldEstimate,
      'explanation': instance.explanation,
      'recommendations': instance.recommendations,
    };
