import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:oxy_store/pages/main_screens/profile_screen.dart';
import 'package:oxy_store/widgets/settings_list_widget.dart';

class AccountSettingsScreen extends StatelessWidget {
  const AccountSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8F9FA),
    
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
              const SizedBox(height: 50,),

               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 10),
                 child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
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

                        const  SizedBox(width: 50,),
        
                        const Text('Account & Settings',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w500),),
            
            
                     
                    ],
            ),
               ),
     
                 const Padding(
                      padding:  EdgeInsets.only(bottom: 15,top: 15,left: 15),
                      child:  Text('Account',style: 
                      TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold),),
                    ), 


                    settingsListWidget(
                      text: 'Notification Setting',
                      image: 'assets/icons/bill_icon.png'
                    ),
                    settingsListWidget(
                      text: 'Shipping Address',
                      image: 'assets/icons/cart3_icon.png'
                    ),
                    settingsListWidget(
                      text: 'Payment Info',
                      image: 'assets/icons/payment_icon.png'
                    ),
                    settingsListWidget(
                      text: 'Delete Account',
                      image: 'assets/icons/delete_icon.png'
                    ),


                     const Padding(
                      padding:  EdgeInsets.only(bottom: 15,top: 15,left: 15),
                      child:  Text('App Settings',style: 
                      TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold),),
                    ), 


                    settingsListWidget(
                      text: 'Eneble Face ID For Log In',
                      check: false,
                      buttonValue: false
                    ),
                    settingsListWidget(
                      text: 'Eneble Push Notifications',
                       check: false,
                    ),
                    settingsListWidget(
                      text: 'Eneble Location Services',
                       check: false
                    ),
                    settingsListWidget(
                      text: 'Dark Mode',
                       check: false,
                       buttonValue: false
                    ),
                    // Platform.isAndroid ?  CupertinoSwitch(
                    //   value: true,
                    //   onChanged: (value) => false,
                    // ) : Switch(
                    //   value: true,
                    //   onChanged: (value) => false,
                    // )

                             
                    ],
        ),
      ),
    );
  }
}