import 'package:shared_preferences/shared_preferences.dart';

import 'storage.dart';

//late SharedPreferences prefs;

class Store {
  static Future init() async {
    prefs = await SharedPreferences.getInstance();
  }

  Store._();
}
