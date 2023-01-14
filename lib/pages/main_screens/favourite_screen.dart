import 'package:flutter/material.dart';
import 'package:oxy_store/app_data.dart';
import 'package:oxy_store/configrations/app_styles.dart';
import '../../widgets/favourite_widget.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: kMainBackground,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            
              const SizedBox(height: 30,),

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
        
                        const Text('Favourite',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w500),),
            
            
                      InkWell(
                      child: Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30.0),
                          image: const DecorationImage(
                          image: AssetImage("assets/icons/heart_icon.png"),
                          fit: BoxFit.cover,
                        ),
                        ),
                            ),
                          ),
                    ],
            ),
               ),
        
              const SizedBox(height: 20,),
        
              // Column(
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   children: [
        
              //     Row(
              //       // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //       children: [
              //         favouriteProductWidget(
              //       image: 'assets/images/shoe4.png',
              //       // width: 130,
              //       color1:const Color(0XFFFDFFA7),
              //       color2:const Color(0XFF6CCFC0),
              //       name: "Nike Jordan",
              //       price: "\$ 58.7",  
              //       ),
        
              //       favouriteProductWidget(
              //       image: 'assets/images/shoe4.png',
              //       // width: 120,
              //       // height: 70,
              //       color1:const Color(0XFF92CAFF),
              //       color2:const Color(0XFF656B7E),
              //       name: "Nike Air Max",
              //       price: "\$ 37.8",  
              //       ),
              //       ],
              //     ),
        
              //     Row(
              //       // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //       children: [
              //         favouriteProductWidget(
              //       image: 'assets/images/shoe4.png',
              //       // width: 120,
              //       color1:const Color(0XFF1685D4),
              //       color2:const Color(0XFFF6C954),
              //       name: "Nike Club Max",
              //       price: "\$ 47.7",  
              //       ),
        
              //       favouriteProductWidget(
              //       image: 'assets/images/shoe4.png',
              //       // width: 130,
              //       color1:const Color(0XFF7DDBDA),
              //       color2:const Color(0XFF606ACB),
              //       name: "Nike Air Max",
              //       price: "\$ 57.6",  
              //       ),
              //       ],
              //     ),

                  
              //   ],
              // )
            
            GridView.builder(
                    // padding: const EdgeInsets.all(5),
              shrinkWrap: true,
              itemCount: favouriteList.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 24,
                // width / height: fixed for *all* items
                childAspectRatio: 0.70,
              ), 
              itemBuilder: (context,index){
                return favouriteProductWidget(
                  image: favouriteList[index]["image"],
                  name:favouriteList[index]["name"],
                  color1: favouriteList[index]["color1"],
                  color2: favouriteList[index]["color2"],
                  price: favouriteList[index]["price"],
                );
              })
            
              
            ],
          ),
        ),
      ),
    );
  }
}