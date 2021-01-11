import 'package:educationmathapp/Features/Screens/LogInScreen/LoginScreen.dart';
import 'package:educationmathapp/Features/Screens/SignUpScreen/SignUp.dart';
import 'package:flutter/material.dart';

//in this page we have a login and sign up buttons and we did every thing in code to be like design Mr.Mohamed
//we shouldn't change iny thing until Mr.Mohamed Ask For that or Mr.Mahmoud
//My impression of this page its beautiful And i Like her
//step one is Done

class HomeScreenView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // this is main column in this page
      child: Column(
        children: <Widget>[
          //this height from padding i did this number for make it like design photo
          Padding(padding: EdgeInsets.only(bottom: 300)),
          // i did this code like that to be like design photo
          Center(
              child: Image(
            image: AssetImage("assets/images/logo.png"),
            width: MediaQuery.of(context).size.width * .5,
          )),
          // i did this code like that to be like design photo
          Padding(padding: EdgeInsets.only(bottom: 40)),
          // this line for push and navigate to sign up page  
          GestureDetector( 
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUpScreen()));
            },
            // i did this code like that to be like design photo
          child: Container(
              height: 50,
              width: 300,
              // i did this code like that to be like design photo
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: Offset(0, 4), // changes position of shadow
                  ),
                ],
              ),
              // i did this code like that to be like design photo

              child: Center(
                  child: Text(
                "Sign Up",
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
            ),
          ),
          // i did this code like that to be like design photo
          Padding(padding: EdgeInsets.only(bottom: 20)),
          // this line for push and navigate to LogIn page
          GestureDetector(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> LogInScreen()));
          },
            // i did this code like that to be like design photo
            child: Container(
              height: 50,
              width: 300,
              // i did this code like that to be like design photo
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    spreadRadius: 1,
                    blurRadius: 4,
                    offset: Offset(0, 5), // changes position of shadow
                  ),
                ],
              ),
              // i did this code like that to be like design photo
              child: Center(
                  child: Text(
                "LogIn",
                style: TextStyle(color: Colors.black, fontSize: 20),
              )),
            ),
          ),
          // i did this code like that to be like design photo
          // and to let space for Bottom shadow Box
          Padding(padding: EdgeInsets.only(bottom: 20)),
          // i did this code like that to be like design photo
          Image(
            image: AssetImage("assets/images/Bottom.png"),
          ),
        ],
      ),
    );
  }
}
