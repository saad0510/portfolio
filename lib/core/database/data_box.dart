import 'package:shared_preferences/shared_preferences.dart';

abstract class DataBox {
  final String name;
  late final SharedPreferences prefs;

  DataBox(this.name);

  Future<void> open() async {
    prefs = await SharedPreferences.getInstance();
  }

  Future<void> clean() async {
    await prefs.remove(name);
  }
}
