import 'package:flutter/material.dart';
import 'package:oxy_store/configrations/app_styles.dart';
import 'dart:math' as math;


Widget customProductWidget ({
  double size = 0,
  
}) => Padding(
  padding: const EdgeInsets.symmetric(horizontal: 5),
  child:   Container(   
  
                          height: 170,
  
                         width: size,
  
                         
  
                         decoration: const BoxDecoration(
  
                          color: Colors.white,
  
                     borderRadius: BorderRadius.only(
  
                                      bottomRight: Radius.circular(15),
  
                                      )
  
                        ),
  
  
  
                         child: Column(
  
                          children: [
  
  
  
  
  
                        Padding(
  
                           padding: const EdgeInsets.all(10.0),
  
                           child: Column(
  
                            crossAxisAlignment: CrossAxisAlignment.start,
  
                            children: [
  
                              
  
                            const SizedBox(height: 10,),
  
                            Transform.rotate(
  
                                  angle: -math.pi / 60,
  
                                  child: Container(
  
                                    height: 60,
  
                                    width: size,
  
                                    decoration:const BoxDecoration(
  
                                      // color: Colors.red,
  
                                      image: DecorationImage(
  
                                        fit: BoxFit.cover,
  
                                        image: AssetImage('assets/images/shoe4.png'))
  
                                    ),
  
                                  )
  
                              ),
  
                              const SizedBox(height: 10,),
  
  
  
                              const Text('Best Seller',
  
                              style: TextStyle(
  
                                fontSize: 12,
  
                                fontWeight: FontWeight.w400,
  
                                color: kMainColor
  
                                ),),
  
  
  
                                 const SizedBox(height: 5,),
  
  
  
                              const Text('Nike Jordan',
  
                              style: TextStyle(
  
                                fontSize: 12,
  
                                fontWeight: FontWeight.w500,
  
                                color: Colors.black
  
                                ),),
  
  
  
                                
  
  
  
                                                       ],
  
                           ),
  
                         ),
  
  
  
                              Row(
  
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
  
                                children: [
  
                              
  
                              const Padding(
  
                                padding:  EdgeInsets.only(left: 10),
  
                                child:  Text('\$ 493.00',
  
                                style: TextStyle(
  
                                  fontSize: 14,
  
                                  fontWeight: FontWeight.w500,
  
                                  color: Colors.black
  
                                  ),),
  
                              ),
  
                              
  
                                Container(
  
                                  width: 40,
  
                                  height: 37,
  
                                  decoration: const BoxDecoration(
  
                                    color: kMainColor,
  
                                    borderRadius: BorderRadius.only(
  
                                      topLeft: Radius.circular(15),
  
                                      bottomRight: Radius.circular(15),
  
                                      )
  
                                  ),
  
                                  child: const Center(
  
                                    child: Icon(Icons.add,color: Colors.white,),
  
                                  ),
  
                                ),
  
                              
  
                              ],)
  
  
  
                          ],
  
                         )                      ),
);

