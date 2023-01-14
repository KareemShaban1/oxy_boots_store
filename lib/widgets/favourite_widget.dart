import 'package:flutter/material.dart';
import 'package:oxy_store/configrations/app_styles.dart';
import 'package:oxy_store/configrations/size_configs.dart';


Widget favouriteProductWidget ({
  // double width = 0,
  // double height = 70,
  Color color1 = Colors.white,
  Color color2 = Colors.white,
  String name ="",
  String price = "",
  String image = "",
  
}) => Container(
  height: 250,
  width: SizeConfig.screenWidth! / 2.2 ,
  padding:const EdgeInsets.all(5),
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(15),
  ),

child: Stack(
  children: [

    Positioned(
      top: 15,
      left: 15,
      child: Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(30.0),
            image: const DecorationImage(
            image: AssetImage("assets/icons/heart_icon.png"),
            fit: BoxFit.cover,
          ),
          ),
              ),
    ),

    Positioned(
          top: 30,
          right: 5,
          child: Image(
              image: AssetImage(image),
              alignment: Alignment.center,
              fit: BoxFit.fitWidth,
              ),
        ),

    Positioned(
          top: 120,
          // left: 15,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children:  [

               const Text('BEST SELLER',style: TextStyle(color: kMainColor,fontSize: 12,fontWeight: FontWeight.w500),),
              
               const SizedBox(height: 5,),
              
              Text(name,style: const TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w500),),
              
               const SizedBox(height: 10,),

               Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  
                   Text(price,style:const TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.w500),),
                   
                    const SizedBox(width: 70,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 12,
                        width: 12,
                        
                        decoration: BoxDecoration(
                          color: color1,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      const SizedBox(width: 5,),
                      Container(
                        height: 12,
                        width: 12,
                        
                        decoration: BoxDecoration(
                          color: color2,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      )
                    ],
                  )
                ],
                )
            ],
          ),
        ),
  ],
)            );

