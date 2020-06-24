import 'package:flutter/material.dart';
import 'package:workout_junkie/constants.dart';
import 'screens/homeScreen.dart';
import 'screens/welcomeScreen.dart';
import 'package:workout_junkie/screens/workoutScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: kBlueAccentColor, //0xFF + HEX code
        scaffoldBackgroundColor: Color(0xFFFDFDFD),
      ), // ThemeData
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomeScreen(),
        '/home': (context) => HomeScreen(),
        '/easyworkout': (context) => EasyWorkoutPage(),
        // '/medworkout': (context) => MedWorkout(),
        // '/hardworkout': (context) => HardWorkout(),
        // '/xtrmworkout': (context) => XtrmWorkout(),
      },
    );
  }
}