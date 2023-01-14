
import 'package:flutter/material.dart';

Widget defaultButton({
    required double width,
    required double height,
    required String name ,
    required VoidCallback onPressed,
    required Color buttonColor,
    Color textColor = Colors.white 


}) => MaterialButton(

  onPressed: onPressed,
  splashColor: Colors.transparent,
  padding: EdgeInsets.zero,

  child: Container(


    width: width,
    height: height,

    decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.circular(20.0)
    ),


    child: Align(
      alignment: Alignment.center,
      child: Text(
        name,
        style: TextStyle(
            color: textColor
        ),
      ),
    ),
  ),
);