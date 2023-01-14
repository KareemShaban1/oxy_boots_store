import 'package:flutter/material.dart';
import 'package:oxy_store/configrations/app_styles.dart';
import 'package:oxy_store/configrations/size_configs.dart';
import 'package:oxy_store/pages/main_screens/home_screen.dart';
import 'package:oxy_store/widgets/size_widget.dart';

class ProuctScreen extends StatefulWidget {
  const ProuctScreen({super.key});

  @override
  State<ProuctScreen> createState() => _ProuctScreenState();
}

class _ProuctScreenState extends State<ProuctScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: kMainBackground,
      body: SingleChildScrollView(

        child:Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
          children: [
            
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
             child: Column(
               children: [

                 Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [

               InkWell(
                onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const HomeScreen()),
                              ),
               child: Container(
                 width: 45,
                 height: 45,
                 decoration: BoxDecoration(
                   color: Colors.white,
                   borderRadius: BorderRadius.circular(30.0),
                   image: const DecorationImage(
                   image: AssetImage("assets/icons/back_icon.png"),
                   fit: BoxFit.cover,
                 ),
                 ),
                     ),
                   ),

                   const Text('Men’s Shoes',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),


               InkWell(
               child: Container(
                 width: 45,
                 height: 45,
                 decoration: BoxDecoration(
                   color: Colors.white,
                   borderRadius: BorderRadius.circular(30.0),
                   image: const DecorationImage(
                   image: AssetImage("assets/icons/cart_icon.png"),
                   fit: BoxFit.cover,
                 ),
                 ),
                     ),
                   ),
             ],
          ),
             const SizedBox(height: 10,),
             ],
             ),
           ),

            const SizedBox(height: 20,),


            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                
                // color: Colors.red,
                height: 190,
                width: SizeConfig.screenWidthPadding,
                child: Stack(
                // crossAxisAlignment: CrossAxisAlignment.start,  
                children: [ 

               Positioned(
                top: 0,
                left: 80,
                child: Image.asset('assets/images/shoe1.png',
               width: 150,
               height: 150,
               fit: BoxFit.fitWidth,),
               ),  
                 Positioned(
                  top: 90,
                  child:Image.asset('assets/images/shape4.png'),)

                ],
                ),
              ),
            ),

            const SizedBox(height: 10,),

            Container(
              padding: const EdgeInsets.only(top: 10,right: 20,left: 20,bottom: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Column(
               
                children:  [

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children:const [
                    Text('Best Seller',style: 
                    TextStyle(
                      color: kMainColor, 
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                    ),
                    ],
                  ),

                  const SizedBox(height: 5,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                    Text('Nike Air Jordan',style: 
                    TextStyle(
                      color: Colors.black, 
                      fontSize: 24,
                      fontWeight: FontWeight.w500),
                    ),
                    ],
                  ),

                  const SizedBox(height: 5,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                    Text('\$ 967.800',style: 
                    TextStyle(
                      color: Colors.black, 
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                    ),
                    ],
                  ),

                  const SizedBox(height: 5,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                    Text('Air Jordan is an American brand of basketball \n'
                    'shoes athletic, casual, and style clothing\n'
                    'produced by Nike....',
                    style: 
                    TextStyle(
                      color: Color(0xff707B81), 
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                    ),
                    ],
                  ),

                  const SizedBox(height: 10,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                    Text('Gallery',style: 
                    TextStyle(
                      color: Colors.black, 
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                    ),
                    ],
                  ),

                  const SizedBox(height: 10,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children:  [
                    
                    Container(
                      width: 60,
                      height: 50,
                      decoration: BoxDecoration(
                        color:Colors.grey[100],
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child:const Center(
                        child:  Image(
                        image: AssetImage('assets/images/shoe1.png'),
                        width: 45,
                        height:45,
                        fit: BoxFit.fitWidth,
                    ),
                      ),
                      ),

                    const SizedBox(width: 5,),

                    Container(
                      width: 60,
                      height: 50,
                      decoration: BoxDecoration(
                        color:Colors.grey[100],
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child:const Center(
                        child:  Image(
                        image: AssetImage('assets/images/shoe4.png'),
                        width: 50,
                        height:50,
                        fit: BoxFit.fitWidth,
                    ),
                      ),
                      ),

                    const SizedBox(width: 5,),

                   Container(
                      width: 60,
                      height: 50,
                      decoration: BoxDecoration(
                        color:Colors.grey[100],
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child:const Center(
                        child:  Image(
                        image: AssetImage('assets/images/shoe6.png'),
                        width: 50,
                        height:50,
                        fit: BoxFit.fitWidth,
                    ),
                      ),
                      ),

                    ],
                  ),

                  const SizedBox(height: 15,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                    
                    const Text('Size',style: 
                    TextStyle(
                      color: Colors.black, 
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                    ),

                  Row(
                    children: [
                      Row(
                        children:const[

                          Text('EU',style:TextStyle(
                            color: Colors.black, 
                            fontSize: 14,
                            fontWeight: FontWeight.w500)),

                          SizedBox(width: 8,),

                             Text('US',style:TextStyle(
                            color: Colors.black, 
                            fontSize: 14,
                            fontWeight: FontWeight.w500)),

                          SizedBox(width: 8,),

                             Text('UK',style:TextStyle(
                            color: Colors.black, 
                            fontSize: 14,
                            fontWeight: FontWeight.w500)),


                        ],
                      ),
                    ],
                   )

                    
                    ],
                  ),

                  const SizedBox(height: 10,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                     sizeWidget(text: '38'),

                     sizeWidget(text: '39'),

                     sizeWidget(text: '40',click: true),

                     sizeWidget(text: '41'),

                     sizeWidget(text: '42'),

                     sizeWidget(text: '43'),

                    ],
                  ), 


                  ]
              ),
            ),

            // const SizedBox(height: 10,),


            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                boxShadow:[ 
               BoxShadow(
                  color: Colors.grey.withOpacity(0.2), //color of shadow
                  spreadRadius: 5, //spread radius
                  blurRadius: 7, // blur radius
                  offset:const Offset(0, 0), // changes position of shadow
                  //first paramerter of offset is left-right
                  //second parameter is top to down
               ),
               //you can set more BoxShadow() here
              ],
              ),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:const [
                      Text('Price',style: TextStyle(
                        color: Color(0xFF707B81), 
                        fontSize: 16,
                        fontWeight: FontWeight.w500),),

                      SizedBox(height: 5,),

                      Text('\$ 849.69',style: TextStyle(
                        color: Colors.black, 
                        fontSize: 20,
                        fontWeight: FontWeight.w500),),
                    ],
                  ),
                              Container(  
              width: 180,
              height: 45,
              decoration: BoxDecoration(
                color:kMainColor,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child:const Center(
                child:  Text('Add to cart',style:TextStyle(
                    color: Colors.white, 
                    fontSize: 18,
                    fontWeight: FontWeight.w500)),
              ),
            )

                ],
              ),
            )

          ],
          ),
        )      ),
    );
  }
}