import 'package:get_storage/get_storage.dart';

class AppStorage {

  static late final GetStorage _storage;

  static init() async {
    await GetStorage.init();
    _storage = GetStorage();
  }

  AppStorage._();

  /// phone
  static String? get username => _storage.read('username');
  static set username(String? usernameStr) => _storage.write('username', usernameStr);

  /// password
  static String? get password => _storage.read('password');
  static set password(String? passwordStr) => _storage.write('password', passwordStr);

  /// password
  static String? get account => _storage.read('account');
  static set account(String? accountStr) => _storage.write('account', accountStr);

  /// password
  static String? get avatar => _storage.read('avatar');
  static set avatar(String? avatarStr) => _storage.write('avatar', avatarStr);

  static clear() {
    _storage.remove('username');
    _storage.remove('password');
    _storage.remove('account');
    _storage.remove('avatar');
  }
}