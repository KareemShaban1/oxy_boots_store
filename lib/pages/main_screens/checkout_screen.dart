import 'package:flutter/material.dart';
import 'package:oxy_store/configrations/app_styles.dart';
import 'package:oxy_store/widgets/checkout_item_widget.dart';
import 'package:oxy_store/widgets/default_button.dart';


class Checkout extends StatelessWidget {
  const Checkout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffF8F9FA),

      body: SingleChildScrollView(
        child: Column(
          children: [
              const SizedBox(height: 40,),

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
        
                        const Text('Check Out',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w500),),
            
            
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
     

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
              child: Container(
                height: 480,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:BorderRadius.circular(15)
                ),
                child:
                 Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    const Padding(
                      padding:  EdgeInsets.only(bottom: 15,top: 15,left: 15),
                      child:  Text('Contact Information',style: 
                      TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold),),
                    ),

                    checkoutItemWidget(
                      icon: Icons.edit_outlined,
                      title: 'rumenhussen@gmail.com',
                      subtitle: 'Email',
                    ),
                    checkoutItemWidget(
                      icon: Icons.edit_outlined,
                      title: '+88-692 -764-269',
                      subtitle: 'Phone',
                    ),

                    const Padding(
                      padding:  EdgeInsets.only(top: 10,left: 15),
                      child:  Text('Address',style: 
                      TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold),),
                    ),

                      Padding(
                      padding:  const EdgeInsets.only(top: 15,left: 15,right: 15),
                      child:  Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:const [
                      Text('Newahall St 36, London, 12908 - UK',style: 
                      TextStyle(
                        color: Color(0xff707B81),
                        fontSize: 12,
                        ),),

                        Icon(Icons.keyboard_arrow_down,color:Color(0xff707B81) ,)
                        ],
                      )
                    ),

                     Padding(
                      padding: const EdgeInsets.only(bottom: 15,top: 15,left: 15,right: 15),
                      child:  Image.asset('assets/images/map.png')
                    ),

                       const Padding(
                      padding:  EdgeInsets.only(left: 15),
                      child:  Text('Payment Method',style: 
                      TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold),),
                    ),

                    Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
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
                      children:  const [
                        SizedBox(
                          width: 180,
                          child: Text('Paypal Card',style: TextStyle(fontWeight: FontWeight.bold),)),
                        SizedBox(height: 10,),
                        Text('**** **** 0696 4629',style: TextStyle(color: Color(0xff707B81))),
                        SizedBox(height: 10,),

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
                        child:const Icon(Icons.keyboard_arrow_down),

                            ),
                      ],
                    )
                
                  ],
                 )),

                 




                  ],
                ),
              ),
            ),

             Container(
              height: 230,
              decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15)
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15,top: 20,bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                     Text('Subtotal'),
                     Text('\$1250.00',style: TextStyle(fontWeight: FontWeight.bold),)
                      ],
                    ),


                    
                  ),

                   Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                     Text('Shopping'),
                     Text('\$40.90',style: TextStyle(fontWeight: FontWeight.bold),)
                      ],
                    ),
                    
                  ),

                  const SizedBox(height: 10,),

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
                        name: 'Payment', 
                        onPressed: ()=> showAlertDialog(context),
                        buttonColor: kMainColor
                        ),

                  
                ],
              ),
            ),

           

            
          ],
        ),
      ),
    );
  }

  showAlertDialog(BuildContext context) {

  // set up the button
  Widget okButton =   defaultButton(
                        width:300,
                        height: 50, 
                        name: 'Back to shopping', 
                        onPressed: (){},
                        buttonColor: kMainColor
                        );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    shape:const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(32.0))),
    content: SizedBox(
      height: 370,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/images/payment_image.png'),
          Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:const [
          Text('Your Payment Is \n     Successful',style: TextStyle(fontWeight: FontWeight.bold),),
        ],
      ),
      const SizedBox(height: 50,),
      okButton
        ],
      ),
    ),
    // content: 
    // actions: [
    //   okButton,
    // ],
  );

  // show the dialog
  showDialog(
    
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}


}