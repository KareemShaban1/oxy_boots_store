
import 'package:flutter/material.dart';
import 'package:oxy_store/configrations/app_styles.dart';
import 'package:oxy_store/pages/authentication_screens/Sign_In_screen.dart';
import 'package:oxy_store/widgets/default_text_field.dart';
import 'package:oxy_store/widgets/default_button.dart';

class SignUp extends StatefulWidget {

  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}


class _SignUpState extends State<SignUp> {
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
                      onTap: () {Navigator.pop(context);
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

                  const SizedBox(height: 30,),

                   Center(
                     child: Column(
                     children: const [

                       Text('Create Account',
                         style:TextStyle(
                          color: Color(0xFF1A2530),
                          fontSize: 28,
                          fontWeight: FontWeight.w500,     
                           ) ,
                           ),

                       SizedBox(height: 10,),
                       
                       Text('Let’s Create Account Together',
                       style: TextStyle(
                        color: Color(0xFF707B81),
                        fontSize: 16,
                        fontWeight: FontWeight.w400
                       ),
                       ),

                 ],
                 ),
                   ),


                   const SizedBox(height: 30,),


                 Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    const Text('Name',style: TextStyle(
                      color: Color(0xFF1A2530),
                      fontSize: 16,
                      fontWeight: FontWeight.w500
                    ),),


                    const SizedBox(height: 10,),

                      defaultTextField(
                        
                        type: TextInputType.text, 
                      
                        ),


                      const SizedBox(height: 20,),
                    
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

                        const Text('Password',style: TextStyle(
                      color: Color(0xFF1A2530),
                      fontSize: 16,
                      fontWeight: FontWeight.w500
                    ),),


                    const SizedBox(height: 10,),

                      defaultTextField(
                       suffix: Icons.visibility_off_outlined,
                        type: TextInputType.visiblePassword, 
                        ),

                        const SizedBox(height: 10,),

                  ],
                 ), 

                 

                 Center(
                  child: Column(
                    children: [
                      
                      const SizedBox(height: 30,),

                      defaultButton(
                        width:400,
                        height: 45, 
                        name: 'Sign Up', 
                        onPressed: (){}, 
                        buttonColor: kMainColor
                        ),

                        const SizedBox(height: 15,),

                

                const SizedBox(height: 60,),

               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  
                 const Text('Already Have an account?'
                  ,style: TextStyle(
                    color: Color(0xFF707B81),
                    fontSize: 12,
                    fontWeight: FontWeight.w400
                  ),),

                  InkWell(
                    onTap: () =>  Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>const SignIn()),
                              ),
                    child: 
                    const Text(' Sign In'
                    ,style: TextStyle(
                      color: Color(0xFF1A2530),
                      fontSize: 12,
                      fontWeight: FontWeight.w400
                    ),),
                  ),

                  // Text(' Sign In'
                  // ,style: TextStyle(
                  //   color: Color(0xFF1A2530),
                  //   fontSize: 12,
                  //   fontWeight: FontWeight.w400
                  // ),),
                ],
               )

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
