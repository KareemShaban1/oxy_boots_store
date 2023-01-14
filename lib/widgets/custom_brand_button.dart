import 'package:flutter/material.dart';
import 'package:oxy_store/configrations/app_styles.dart';

Widget customBrandButton({
  required String image,
   VoidCallback? action,
   bool click = false ,
   String text = '',
}
)=> 
InkWell(
  // onTap: action,
  child:   Container(
  width: click ? 85 : 45,
  height: 50,
  decoration: BoxDecoration(
  
    color: click ?kMainColor : Colors.white,
  
    borderRadius: BorderRadius.circular(30.0),
  
  //   image:  DecorationImage(
  
  //   image: AssetImage(image),
  
  //   fit: BoxFit.cover,
  
  // ),
  
  ),

  child: click ? Padding(
    padding: const EdgeInsets.only(left: 10,right: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,

      children: [
        Image.asset(image,),
        
        Text(text,style:const TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w400),)
        ],
      
      ),
  ): 
  Center(child: Image.asset(image),),
  
  ),
);