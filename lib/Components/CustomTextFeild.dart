import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final Function onSaved;
  final bool obscureText;
  final Icon suffixIcon;
  CustomTextField({
    @required this.hint,
    @required this.onSaved,
    this.obscureText, this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),
      validator: (value) {
        if (value.isEmpty) {
          return "this field is empty";
        } else {
          return null;
        }
      },
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        hintStyle: TextStyle(color: Colors.black26),
        hintText: hint,
        // suffix: Icon(Icons.check_circle),
      ),

      obscureText: obscureText != null,
    );
  }
}
