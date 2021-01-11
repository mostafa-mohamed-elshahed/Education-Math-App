import 'package:educationmathapp/Components/Components.dart';
import 'package:educationmathapp/Features/Screens/HomeScreen/Components/bodyScreen.dart';
import 'package:flutter/material.dart';


//this page for sign up i did her design like Mr.Mohamed Design
// this page need to connect with firebase
// step one for design is Done

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:KMainColor,
      body:  HomeScreenView()

    );
  }
}
