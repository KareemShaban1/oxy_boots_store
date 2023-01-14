import 'package:flutter/material.dart';
import 'package:oxy_store/configrations/app_styles.dart';
import 'package:oxy_store/pages/main_screens/checkout_screen.dart';
import 'package:oxy_store/widgets/cart_widget.dart';
import 'package:oxy_store/widgets/default_button.dart';


class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xffF8F9FA),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
                const SizedBox(height: 50,),

               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 10),
                 child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
            
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
        
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
        
                        const Text('My Cart',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w500),),
            
            
                      InkWell(
                      child: Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30.0),
                        //   image: const DecorationImage(
                        //   image: AssetImage("assets/icons/heart_icon.png"),
                        //   fit: BoxFit.cover,
                        // ),
                        ),
                            ),
                          ),
                    ],
            ),
               ),
     
              const SizedBox(height: 20,),

             cartWidget(size: "L", name: "Nike Club Max"),
             cartWidget(size: "XL",name: "Nike Air Max 200"),
             cartWidget(size: "XXL",name: "Nike Air Max"),

                           const SizedBox(height: 20,),

            Container(
              height: 250,
              decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15)
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                     Text('Subtotal'),
                     Text('\$1250.00',style: TextStyle(fontWeight: FontWeight.bold),)
                      ],
                    ),


                    
                  ),

                   Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                     Text('Shopping'),
                     Text('\$40.90',style: TextStyle(fontWeight: FontWeight.bold),)
                      ],
                    ),
                    
                  ),

                  const SizedBox(height: 20,),

                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 1,
                    color: Colors.black,
                  ),

                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                     Text('Total Cost'),
                     Text('\$1690.99',style: TextStyle(fontWeight: FontWeight.bold),)
                      ],
                    ),
                    
                  ),

                  const SizedBox(height: 20,),

                   defaultButton(
                        width:300,
                        height: 50, 
                        name: 'Checkout', 
                        onPressed: ()=> 
                                Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const Checkout()),
                                
                              ),
                        buttonColor: kMainColor
                        ),

                  
                ],
              ),
            ),

           


            
            
            ],
          ),
        ),
      ),
    );
  }
}