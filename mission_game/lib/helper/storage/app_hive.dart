import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

class AppHive {
  factory AppHive() => _instance;
  static final AppHive _instance = AppHive._init();

  AppHive._init();

  late Box box;

  init() async {
    // Hive.box('hiveBox');
    await Hive.initFlutter();
    box = await Hive.openBox('appBox');
  }

  dynamic get(dynamic key) {
    return box.get(key);
  }

  dynamic put(dynamic key, dynamic value) {
    box.put(key, value);
  }

  dynamic delete(dynamic key) {
    box.delete(key);
  }

}

class AppHiveKey {
  static const String localeMissions = 'localeMissions';
  // static const String token = 'token';
  // static const String userId = 'userId';
  // static const String phone = 'phone';
  // static const String countryConfig = 'countryConfig';
  // static const String activeDevice = 'activeDevice';
  // static const String h5Version = 'h5Version';
}