import 'package:educationmathapp/Features/Screens/HomeScreen/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

void main() => runApp(EducationMathApp());

class EducationMathApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp  (
      debugShowCheckedModeBanner: false,
      //here we navigate to Home screen after splashing that's make it's lock's like good
      //this screen is first screen or you can say center of the application
      //and we should be careful with her information and test her many times
      //make her design special design and easy for users
      home:Scaffold(
        body: SplashScreen(
          seconds: 2,
          navigateAfterSeconds: HomeScreen(),
        ),
      )
    );
  }
}