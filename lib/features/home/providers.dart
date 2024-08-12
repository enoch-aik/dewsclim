import 'package:dewsclim/lib.dart';
import 'package:dewsclim/src/app_constants/ngn_states.dart';

final selectedLocation = StateProvider((ref) => nigerianStates.first);

final StateProvider<int> selectedHomeIndex = StateProvider<int>((ref) => 0);

final StateProvider<String> selectedYear =
    StateProvider<String>((ref) => '2024');
