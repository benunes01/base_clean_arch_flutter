import 'package:shared_preferences/shared_preferences.dart';

class ManagerToken {
  void savingValue(String value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    await prefs.setString('token', value);
  }

  Future<String?> getValue() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    String? token = prefs.getString('token');

    return token;
  }

  resetValue() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    prefs.remove('token');
  }
}