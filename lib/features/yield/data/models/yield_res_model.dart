
import 'package:json_annotation/json_annotation.dart';

part 'yield_res_model.g.dart';

@JsonSerializable()
class YieldResModel{
  final int? yieldEstimate;
  final String? explanation;
  final List<String>? recommendations;

  YieldResModel({required this.yieldEstimate, required this.explanation, required this.recommendations});



  factory YieldResModel.fromJson(Map<String, dynamic> json) => _$YieldResModelFromJson(json);

  Map<String, dynamic> toJson() => _$YieldResModelToJson(this);
}