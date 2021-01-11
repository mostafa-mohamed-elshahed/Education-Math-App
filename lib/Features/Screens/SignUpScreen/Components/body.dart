import 'package:educationmathapp/Components/CustomTextFeild.dart';
import 'package:flutter/material.dart';

class SignUpScreenView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // i Am Using this widget to more response
    return SingleChildScrollView(
      //this is main column for this page and he have all widget in side him
      child: Column(
        children: <Widget>[
          //this padding height to be like a design
          Padding(
            padding: EdgeInsets.only(bottom: 180),
          ),
          //this image is logo image
          Image(
              image: AssetImage("assets/images/logo.png"),
              height: MediaQuery.of(context).size.width * .5),
          //this padding special values to be like a design don't change him until Mr.Mohamed or Mr.Mahmoud Ask for that
          Padding(
            padding: EdgeInsets.only(top: 40, left: 30, right: 30, bottom: 20),
            // here i use Container to make me able to use BoxDecoration for make shadow like a design
            child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      spreadRadius: 1,
                      blurRadius: 8,
                      offset: Offset(0, 10), // changes position of shadow
                    ),
                  ],
                ),
                //that's customTextField for make code no long ,
                //src this  customTextField in Components package,
                child: CustomTextField(
                  hint: "User Name",
                  onSaved: null,
                  suffixIcon: Icon(Icons.check_circle),
                )),
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
            padding: EdgeInsets.only( left: 30, right: 30, bottom: 30),
            // here i use Container to make me able to use BoxDecoration for make shadow like a design
            child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      spreadRadius: 1,
                      blurRadius: 8,
                      offset: Offset(0, 10), // changes position of shadow
                    ),
                  ],
                ),
                //that's customTextField for make code no long ,
                //src this  customTextField in Components package,
                child: CustomTextField(
                  hint: "PhoneNumber",
                  onSaved: null,
                  suffixIcon: Icon(Icons.check_circle),
                )),
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
                    "Sign Up",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
