import 'package:flutter/material.dart';
import 'package:oxy_store/configrations/app_styles.dart';
import 'package:oxy_store/widgets/default_text_field.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
        
                        const Text('Profile',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w500),),
            
            
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: InkWell(
                        child: Container(
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30.0),
                            image: const DecorationImage(
                            image: AssetImage("assets/icons/edit_icon.png"),
                            fit: BoxFit.cover,
                          ),
                          ),
                              ),
                            ),
                      ),
                    ],
            ),
               ),
    const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    
                    Container(
                      height: 200,
                      width: 200,
                      decoration:const BoxDecoration(
                        // color: Colors.white
                      ),
                      child: Stack(

                        children: [
                          

                          Positioned(
                            top: 0,
                            left: 35,
                            child: Container(
                              height: 130,
                              width: 130,
                              decoration: BoxDecoration(
                                color: const Color(0xffDFEFFF),
                                borderRadius: BorderRadius.circular(70)
                              ),
                              // child: Image.asset('assets/images/profile.png'),
                            ),
                          ),

                          Positioned(
                            top: 8,
                            left: 40,
                            child: SizedBox(
                              height: 125,
                              width: 125,
                              child: Image.asset('assets/images/profile.png',fit: BoxFit.contain,),
                            )),

                          Positioned(
                            top: 110,
                            left: 85,
                            child: Container(
                              padding:const EdgeInsets.all(5),
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                              color: kMainColor,
                              borderRadius: BorderRadius.circular(25)
                              ),
                              child: Image.asset('assets/icons/camera_icon.png'),
                            )),
                            const Positioned(
                              bottom: 10,
                              left: 45,
                              child: Text('Alisson becker',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),))
                        ],
                      ),


                      
                      
                      
                      )
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      const Text('Full Name',style: TextStyle(
                        color: Color(0xFF1A2530),
                        fontSize: 16,
                        fontWeight: FontWeight.w500
                      ),),


                      const SizedBox(height: 10,),

                        defaultTextField(
                          
                          type: TextInputType.text, 
                           inital:  'AlissonBecker',
                        
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
                        //  suffix: Icons.visibility_off_outlined,
                          type: TextInputType.visiblePassword, 
                          inital: "***********"
                          ),

                          const SizedBox(height: 10,),

                    ],
                   ),
                ), 

      

          ],
        ),
      ),
    );
  }
}