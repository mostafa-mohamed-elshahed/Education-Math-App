import 'package:educationmathapp/Components/Components.dart';
import 'package:educationmathapp/Features/Screens/SignUpScreen/Components/body.dart';
import 'package:flutter/material.dart';

//this page for sign up i did her design like Mr.Mohamed Design
// this page need to connect with firebase
// step one for design is Done
class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // this main color
      backgroundColor: KMainColor,
        body: SignUpScreenView(),
    );
  }
}
