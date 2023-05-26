import 'package:flutter/material.dart';
import 'Input_page.dart';
void main() {
  runApp(BmiCalculator());
}

class BmiCalculator extends StatelessWidget {
  const BmiCalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xff543401),
          accentColor: Color(0xff89590B),
          scaffoldBackgroundColor: Color(0xffB7812A),
          textTheme: TextTheme(
            bodyText1: TextStyle(color: Colors.white),
            bodyText2: TextStyle(color: Colors.white),
      ),
        ),
      home: InputPage(),
    );
  }
}

