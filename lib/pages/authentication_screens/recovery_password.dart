
import 'package:flutter/material.dart';
import 'package:oxy_store/configrations/app_styles.dart';
import 'package:oxy_store/pages/onboarding_screens/onboard_screen.dart';
import 'package:oxy_store/widgets/default_text_field.dart';
import 'package:oxy_store/widgets/default_button.dart';

class RecoveryPassword extends StatefulWidget {
  const RecoveryPassword({Key? key}) : super(key: key);

  @override
  State<RecoveryPassword> createState() => _RecoveryPasswordState();
}

class _RecoveryPasswordState extends State<RecoveryPassword> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: Scaffold(
          backgroundColor:kMainBackground,
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  const SizedBox(height: 20,),

                  InkWell(
                    onTap: ()=>   Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>const OnboardingPage()),
                              ),
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30.0)
                      ),
                      child:IconButton(
                        icon: const Icon(Icons.arrow_back_ios,color: Colors.black,size: 20,),
                        onPressed: () {},
                      ),
                    ),
                  ),

                  const SizedBox(height: 30,),

                   Center(
                     child: Column(
                     children: const [

                       Text('Recovery Password',
                         style:TextStyle(
                          color: Color(0xFF1A2530),
                          fontSize: 28,
                          fontWeight: FontWeight.w500,     
                           ) ,
                           ),

                       SizedBox(height: 10,),
                       
                       Text('Please Enter Your Email Address To \nRecieve a Verification Code',
                       textAlign: TextAlign.center,
                       style: TextStyle(
                        color: Color(0xFF707B81),
                        fontSize: 16,
                        fontWeight: FontWeight.w400
                       ),
                       ),

                 ],
                 ),
                   ),


                   const SizedBox(height: 50,),


                 Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    
                    const Text('Email Address',style: TextStyle(
                      color: Color(0xFF1A2530),
                      fontSize: 16,
                      fontWeight: FontWeight.w500
                    ),),


                    const SizedBox(height: 10,),

                      defaultTextField(
                        inital:  'AlissonBecker@gmail.com',
                        type: TextInputType.emailAddress, 
                      
                        ),



                         const SizedBox(height: 20,),

                       
                  ],
                 ), 

                 Center(
                  child: Column(
                    children: [
                      
                      const SizedBox(height: 30,),

                      defaultButton(
                        width:400,
                        height: 45, 
                        name: 'Continue', 
                        onPressed: (){}, 
                        buttonColor: kMainColor
                        ),

                                        const SizedBox(height: 70,),

                                   ],
                  ),
                 )

                 
                  
                 


                ],
              ),
            )
          ),
        )
    );
  }
}
