import 'package:dewsclim/lib.dart';

final selectedLocation = StateProvider((ref) => '');

final StateProvider<int> selectedHomeIndex = StateProvider<int>((ref) => 0);

final StateProvider<String> selectedYear =
    StateProvider<String>((ref) => '2024');
