import 'package:flutter/material.dart';
import 'package:onboarding_screen/widget/introduction_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

bool show = true;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  show =  prefs.getBool('ON_BOARDING') ?? true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title : 'Onboarding screen',
      theme : ThemeData(
        primaryColor: Colors.blue
      ),
      home :  IntroScreen(),
    );
  }
}