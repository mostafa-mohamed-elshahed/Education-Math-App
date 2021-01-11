import 'package:educationmathapp/Components/CustomTextFeild.dart';
import 'package:educationmathapp/Features/Screens/ChangePassWordScreen/ChangePassWord.dart';
import 'package:educationmathapp/Features/Screens/SignUpScreen/SignUp.dart';
import 'package:flutter/material.dart';
class LogInScreenView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          //this padding special values to be like a design don't change him until Mr.Mohamed or Mr.Mahmoud Ask for that
          Padding(padding: EdgeInsets.only(top: 170,bottom: 30),child: Image(
              image: AssetImage("assets/images/logo.png"),
              height: MediaQuery.of(context).size.width * .5),
          ),
          //this padding special values to be like a design don't change him until Mr.Mohamed or Mr.Mahmoud Ask for that
          Padding(
            padding: EdgeInsets.only( left: 30, right: 30, bottom: 20),
            // here i use Container to make me able to use BoxDecoration for make shadow like a design
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    spreadRadius: 1,
                    blurRadius: 8,
                    offset: Offset(0, 10),// changes position of shadow
                  ),
                ],
              ),
              //that's customTextField for make code no long ,
              //src this  customTextField in Components package,
              child: CustomTextField(
                hint: "Phone Number",
                onSaved: null,
                suffixIcon: Icon(Icons.check_circle),
                obscureText: true,
              ),
            ),
          ),
          //this padding special values to be like a design don't change him until Mr.Mohamed or Mr.Mahmoud Ask for that
          Padding(
            padding: EdgeInsets.only( left: 30, right: 30, bottom: 20),
            // here i use Container to make me able to use BoxDecoration for make shadow like a design
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    spreadRadius: 1,
                    blurRadius: 8,
                    offset: Offset(0, 10),// changes position of shadow
                  ),
                ],
              ),
              //that's customTextField for make code no long ,
              //src this  customTextField in Components package,
              child: CustomTextField(
                hint: "PassWord",
                onSaved: null,
                suffixIcon: Icon(Icons.visibility_off),
                obscureText: true,
              ),
            ),
          ),
          //this padding special values to be like a design don't change him until Mr.Mohamed or Mr.Mahmoud Ask for that
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                //this GestureDetector for navigate to change password screen
                GestureDetector(onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ChangePassWord()));

                },child: Text("Change password?",style: TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.bold),),),
              ],
            ),
          ),
          //this widget go be able to make action on submit
          GestureDetector(
            onTap: (){
              //TODO I Should do code here with firebase To Send Data
            },
            // i did this code like that to be like design photo
            child: Container(
              height: 50,
              width: 340,
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
                    "LogIn",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )),
            ),
          ),
          //this padding special values to be like a design don't change him until Mr.Mohamed or Mr.Mahmoud Ask for that
          Padding(padding: EdgeInsets.only(bottom: 20)),
          // this row created to be like design
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            Text("Don't have an account?",style: TextStyle(color: Colors.black38,fontSize: 17),),
            GestureDetector(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
            },child: Text("Sign Up",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),)),
          ],)

        ],
      ),
    );
  }
}
