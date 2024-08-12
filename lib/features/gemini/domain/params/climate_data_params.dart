class ClimateDataParams {
  final String state;
  final int year;

  ClimateDataParams({required this.state, required this.year});

  Map<String, dynamic> toJson() => {'state': state, 'year': year};
}
