import 'package:flutter/material.dart';

Widget checkoutItemWidget ({
  IconData? icon,
  String? title,
  String? subtitle,
}){
  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [

                    Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color:const Color(0xffF8F9FA),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child:const Icon(Icons.email_outlined),
                        ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:   [
                        SizedBox(
                          width: 180,
                          child: Text(title!)),
                        const SizedBox(height: 10,),
                        Text(subtitle!,style: const TextStyle(color: Color(0xff707B81))),
                        const SizedBox(height: 10,),

                                           ],
                    ),

                    Column(
                      children:  [
                       
                        Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                        color:Colors.white,
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: Icon(icon),

                            ),
                      ],
                    )
                
                  ],
                 ));
}