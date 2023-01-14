import 'package:flutter/material.dart';

Widget cartWidget({
  String? image = "assets/images/shoe4.png",
  String? size = "L",
  String? name = "Nike Club Max",
  String? price = "64.95"
}){
  return  Padding(
    padding: const EdgeInsets.symmetric(vertical: 5),
    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [

                    Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      image:  DecorationImage(
                      image: AssetImage(image!),
                      fit: BoxFit.fitWidth,
                    ),
                    ),
                        ),


                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         Text(name!),
                        const SizedBox(height: 10,),
                        Text('$price \$'),
                        const SizedBox(height: 10,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                             color: Colors.white,
                            borderRadius: BorderRadius.circular(15)
                              ),
                              child:const Icon(Icons.add,size: 20,),
                              
                            ),
                            const SizedBox(width: 20,),
                            const Text('1',style: TextStyle(fontSize: 20),),
                            const SizedBox(width: 20,),
                            Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                             color:const Color(0xff5B9EE1),
                            borderRadius: BorderRadius.circular(15)
                              ),
                              child:const Icon(Icons.add,size: 20,color: Colors.white,),
                              
                            )
                          ],
                        )
                      ],
                    ),

                    Column(
                      children:  [
                        Text(size!,style:const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                        const SizedBox(height: 20,),
                        Container(
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30.0),
                image: const DecorationImage(
                image: AssetImage("assets/icons/bin_icon.png"),
                fit: BoxFit.cover,
              ),
              ),
                  ),
                      ],
                    )
                
                
                
                  ],
                 ),
  );
}