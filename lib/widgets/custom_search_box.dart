import 'package:flutter/material.dart';

Widget customSearchBox ({
  required String text,
  
}) => 
TextFormField(
  initialValue: text,
style: const TextStyle(fontWeight: FontWeight.normal, color: Color(0xFF707B81)),
decoration:const   InputDecoration(
   
    fillColor: Colors.white,
    filled: true,
    isDense: true, 
    contentPadding: EdgeInsets.fromLTRB(20, 25, 20, 0),
    prefixIcon: Icon(Icons.search),
    

  border: OutlineInputBorder(
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