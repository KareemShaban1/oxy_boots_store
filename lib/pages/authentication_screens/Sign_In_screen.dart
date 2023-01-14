
import 'package:flutter/material.dart';
import 'package:oxy_store/configrations/app_styles.dart';
import 'package:oxy_store/pages/authentication_screens/Sign_Up_screen.dart';
import 'package:oxy_store/pages/authentication_screens/recovery_password.dart';
import 'package:oxy_store/pages/main_screens/main_screen.dart';
import 'package:oxy_store/widgets/default_text_field.dart';
import 'package:oxy_store/widgets/default_button.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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

                       Text('Hello Again!',
                         style:TextStyle(
                          color: Color(0xFF1A2530),
                          fontSize: 28,
                          fontWeight: FontWeight.w500,     
                           ) ,
                           ),

                       SizedBox(height: 10,),
                       
                       Text('Welcome Back You’ve Been Missed!',
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

                 Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [

                    InkWell(
                    onTap: () =>  Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>const RecoveryPassword()),
                              ),
                    child:const Text('Recovery Password',
                     style: TextStyle(
                      color: Color(0xFF707B81),
                      fontSize: 13,
                      fontWeight: FontWeight.w400
                     ),)
                    )
                  ],
                 ),

                 Center(
                  child: Column(
                    children: [
                      
                      const SizedBox(height: 30,),

                      defaultButton(
                        width:400,
                        height: 45, 
                        name: 'Sign In', 
                        onPressed: ()=> Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>const MainScreen()),
                              ), 
                        buttonColor: kMainColor
                        ),

                        const SizedBox(height: 15,),

                  MaterialButton(
                  padding: EdgeInsets.zero,
                  onPressed: (){},
                  splashColor: Colors.transparent,
                  child: Container(
                  width: MediaQuery.of(context).size.width ,
                  height: 45,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0)
                  ),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:  [
                  
                      Image.asset(
                      'assets/icons/google_icon.png',
                      width: 25,
                      height: 25,
                      
                    ),

                    const SizedBox(width: 10,),
                  
                    const Text(
                    'Sign In with google',
                    style: TextStyle(
                        color: Colors.black
                    ),
                  ),

                    ],
                  ),
                ),
                ),

                const SizedBox(height: 70,),

               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  
                 const Text('Don’t have an account?'
                  ,style: TextStyle(
                    color: Color(0xFF707B81),
                    fontSize: 12,
                    fontWeight: FontWeight.w400
                  ),),

                  InkWell(
                    onTap: () =>  Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>const SignUp()),
                              ),
                    child: 
                    const Text(' Sign Up for free'
                    ,style: TextStyle(
                      color: Color(0xFF1A2530),
                      fontSize: 12,
                      fontWeight: FontWeight.w400
                    ),),
                  ),
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
