import 'package:flutter/material.dart';
import 'package:oxy_store/app_data.dart';
import 'package:oxy_store/widgets/best_seller_widget.dart';

class BestSellerScreen extends StatelessWidget {
  const BestSellerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: const Color(0xffF8F9FA),
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
        
                        const Text('Best Sellers',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w500),),
            
            
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
                padding: const EdgeInsets.all(10.0),
                child: GridView.builder(
                  physics:const BouncingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: bestSellerList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 18,
                  crossAxisSpacing: 18,
                  // width / height: fixed for *all* items
                  childAspectRatio: 0.75,
                ), 
                itemBuilder: (context,index){
                  return bestSellerWidget(
                    image: bestSellerList[index]["image"],
                    name:bestSellerList[index]["name"],
                    color1: bestSellerList[index]["color1"],
                    color2: bestSellerList[index]["color2"],
                    price: bestSellerList[index]["price"],
                  );
                }),
              )
            
            ],
            
          ),
),
    );
  }
}