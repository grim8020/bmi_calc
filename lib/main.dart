import 'package:bmi_calculator/screens/input_page.dart';
import 'package:bmi_calculator/screens/results_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        //bottomAppBarColor: Color(0xFF152614),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Color(0xFFFF0066),
        ),
        scaffoldBackgroundColor: Color(0xFF0A0F32),
        // don't need textTheme when using ThemeData.dark()
        // textTheme: TextTheme(
        //   bodyText1: TextStyle(
        //     color: Color(0xFFFFFFFF),
        //   ),
        //   bodyText2: TextStyle(
        //     color: Color(0xFFFFFFFF),
        //   ),
        // ),
        appBarTheme: AppBarTheme(
          color: Color(0xFF0A0F32),
          shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(25),
            ),
          ),
        ),
      ),
      routes: {
        '/': (context) => InputPage(),
        '/first': (context) => ResultsPage(),
      },
    );
  }
}
