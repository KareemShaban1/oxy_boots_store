import 'package:flutter/material.dart';

Widget defaultTextField({
  required TextInputType type,
  String? inital,
  IconData? suffix
  // required String label
}) => TextFormField(
 
  keyboardType: type,
  initialValue: inital,
  style: const TextStyle(fontWeight: FontWeight.normal, color: Colors.black),
  decoration:  InputDecoration(
   
    fillColor: Colors.white,
    filled: true,
    isDense: true, 
    contentPadding:const EdgeInsets.fromLTRB(20, 25, 20, 0),
    suffixIcon: Icon(suffix,size: 20,color: Colors.black,),

  border:const OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(30.0)
      ),
      borderSide:  BorderSide(
      width: 0,
      style: BorderStyle.none,
    ),
  ),
    
  ),
  
);