import 'package:flutter/material.dart';
import 'package:news/model/them_model.dart';
import 'package:news/screen/home_screen.dart';
import 'package:news/screen/onBorading.dart';
import 'package:shared_preferences/shared_preferences.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool seen = prefs.getBool('seen');
  Widget _screen;
  if (seen == null || seen == false) {
    _screen = Onboarding();
  } else {
    _screen = HomeScreen();
  }
  runApp(MyApp(_screen));
}

class MyApp extends StatelessWidget {
  final Widget _screen;
  MyApp(this._screen);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.appTheme,
      debugShowCheckedModeBanner: false,
      home: this._screen,
    );
  }
}
