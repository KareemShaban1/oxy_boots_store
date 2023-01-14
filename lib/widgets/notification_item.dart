import 'package:flutter/material.dart';

Widget notificationItem({
  String? image,
  bool? hasIcon,
}){
  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [

                    Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      color:const Color(0xffF8F9FA),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: Image.asset(image!),
                        ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [

                        const SizedBox(
                          width: 180,
                          child: Text('We Have New \nProducts With Offers')),
                        const SizedBox(height: 10,),
                        Row(
                          children:const [

                              Text('\$364.95'),
                              SizedBox(width: 15,),
                              Text('\$250.95',style: TextStyle(color: Color(0xff707B81))),
                          ],
                        ),
                        const SizedBox(height: 10,),

                              ],
                    ),

                    Column(
                      children:  [
                      const  Text('3 min'),
                       
                        Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                        color:Colors.white,
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                         child:hasIcon! ? const Icon( Icons.circle,color: Colors.blue,size: 15,):null,

                            ),
                      ],
                    )
                
                  ],
                 )); 
}