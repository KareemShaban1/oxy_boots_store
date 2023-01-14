import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oxy_store/configrations/app_styles.dart';

Widget settingsListWidget({
  String? text,
  String? image,
  bool check = true,
  bool buttonValue = true,
  // IconData icon = Icons.arrow_forward_ios
}){
  return   Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          image != null ?
                          Row(
                            children: [
                              
                               Container(
                              width: 25,
                              height: 25,
                              decoration: BoxDecoration(
                                // color:const Color(0xffF8F9FA),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Image.asset(image),
                                  ),

                                 const SizedBox(width: 10,),

                                  Text(text!),
                            ],
                          )
                          : 
                          Text(text!),

                           Padding(
                            padding:const EdgeInsets.symmetric(horizontal: 5),
                            child:check ? 
                           const Icon(Icons.arrow_forward_ios,size: 20,) : 
                            Transform.scale(
                              scale: 0.6,
                              child: CupertinoSwitch(
                                activeColor: kMainColor,
                                value: buttonValue,
                                onChanged: (value) => false,
                                                ),
                            ),
                          )

                        ],
                      ),
                    )    ;     
                    
       
}