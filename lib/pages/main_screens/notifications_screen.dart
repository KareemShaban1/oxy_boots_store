import 'package:flutter/material.dart';
import 'package:oxy_store/widgets/notification_item.dart';


class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: const Color(0xffF8F9FA),
      body: Column(
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
        
                        const Text('Notifications',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w500),),
            
            
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
     

             Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    const Padding(
                      padding:  EdgeInsets.only(bottom: 15,top: 15,left: 15),
                      child:  Text('Today',style: 
                      TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold),),
                    ),

                  notificationItem(
                      image: 'assets/images/shoe1.png',
                      hasIcon: true
                    ),
                     notificationItem(
                      image: 'assets/images/shoe2.png',
                      hasIcon: true
                    ),

                  ],
                ),


                 Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    const Padding(
                      padding:  EdgeInsets.only(bottom: 15,top: 15,left: 15),
                      child:  Text('Yesterday',style: 
                      TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold),),
                    ),

                    notificationItem(
                      image: 'assets/images/shoe1.png',
                      hasIcon: false
                    ),


                notificationItem(
                      image: 'assets/images/shoe2.png',
                      hasIcon: false
                    ),

                  ],
                ),


        ],
      ),
    );
  }
}