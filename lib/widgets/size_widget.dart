import 'package:flutter/material.dart';
import 'package:oxy_store/configrations/app_styles.dart';

Widget sizeWidget({
  String text = '',
  bool click = false,
  // Color color = kMainBackground,
  // Color textColor = Colors.black,
}) =>  Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: click ? kMainColor :const Color(0xFFF8F9FA),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                        child: Center(
                          child:  Text(text,style:
                           TextStyle(
                              color:click ? Colors.white : const Color(0xFF707B81), 
                              fontSize: 14,
                              fontWeight: FontWeight.w500)),
                        ),
                      );