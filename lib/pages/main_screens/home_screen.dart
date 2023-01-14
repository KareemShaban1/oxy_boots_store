import 'package:flutter/material.dart';
import 'package:oxy_store/configrations/app_styles.dart';
import 'package:oxy_store/pages/main_screens/account&settings_screen.dart';
import 'package:oxy_store/pages/main_screens/best_sellers_screen.dart';
import 'package:oxy_store/pages/main_screens/cart_screen.dart';
import 'package:oxy_store/pages/main_screens/favourite_screen.dart';
import 'package:oxy_store/pages/main_screens/notifications_screen.dart';
import 'package:oxy_store/pages/main_screens/product_screen.dart';
import 'package:oxy_store/widgets/custom_brand_button.dart';
import 'package:oxy_store/widgets/custom_search_box.dart';
import 'package:oxy_store/widgets/product_widget.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'dart:math' as math;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

bool onClick = false;
int currentIndex = 0;

  setBottomBarIndex(index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
     final Size size = MediaQuery.of(context).size;
     
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kMainBackground,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30.0),
            image: const DecorationImage(
            image: AssetImage("assets/icons/dots_icon.png"),
            fit: BoxFit.cover,
          ),
          ),
          child: InkWell(
              // icon:const Icon(Icons.menu),
              onTap: () => ZoomDrawer.of(context)!.toggle(),
            ),
              ),

                      Column(children: [
                        const Text('Store location',style: TextStyle(color: Color(0xFF707B81),fontSize: 12,fontWeight: FontWeight.w500),),
                       Row(
                       
                        children: [

                          Container(
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30.0),
                              image: const DecorationImage(
                              image: AssetImage("assets/icons/location_icon.png"),
                              fit: BoxFit.cover,
                            ),
                            ),
                        ),

                        const SizedBox(width: 5,),

                        const Text('Mondolibug, Sylhet',style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.w500),),


                        ],
                       )
                      ],
                      ),


                  InkWell(
                    onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const CartScreen()),
                              ),
                  child: Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30.0),
                      image: const DecorationImage(
                      image: AssetImage("assets/icons/cart_icon.png"),
                      fit: BoxFit.cover,
                    ),
                    ),
                        ),
                      ),
                ],
          ),
          
      ),
      backgroundColor: kMainBackground,
      body: Stack(

        children: [


          Positioned(
            top: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),

              child: Container(
                height: 50,
                width: size.width,
                // color: Colors.red,
               
                padding:const EdgeInsets.symmetric(horizontal: 20),

                child: Column(
                  children: [

          //           Row(
          //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //       children: [

          //         InkWell(
          //           onTap: () =>const MenuWidget(),
          //         child: Container(
          //           width: 45,
          //           height: 45,
          //           decoration: BoxDecoration(
          //             color: Colors.white,
          //             borderRadius: BorderRadius.circular(30.0),
          //             image: const DecorationImage(
          //             image: AssetImage("assets/icons/dots_icon.png"),
          //             fit: BoxFit.cover,
          //           ),
          //           ),
          //               ),
          //             ),

          //             Column(children: [
          //               const Text('Store location',style: TextStyle(color: Color(0xFF707B81),fontSize: 12,fontWeight: FontWeight.w500),),
          //              Row(
                       
          //               children: [

          //                 Container(
          //                   width: 10,
          //                   height: 10,
          //                   decoration: BoxDecoration(
          //                     color: Colors.white,
          //                     borderRadius: BorderRadius.circular(30.0),
          //                     image: const DecorationImage(
          //                     image: AssetImage("assets/icons/location_icon.png"),
          //                     fit: BoxFit.cover,
          //                   ),
          //                   ),
          //               ),

          //               const SizedBox(width: 5,),

          //               const Text('Mondolibug, Sylhet',style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.w500),),


          //               ],
          //              )
          //             ],
          //             ),


          //         InkWell(
          //           onTap: () => Navigator.push(
          //                       context,
          //                       MaterialPageRoute(builder: (context) => const CartScreen()),
          //                     ),
          //         child: Container(
          //           width: 45,
          //           height: 45,
          //           decoration: BoxDecoration(
          //             color: Colors.white,
          //             borderRadius: BorderRadius.circular(30.0),
          //             image: const DecorationImage(
          //             image: AssetImage("assets/icons/cart_icon.png"),
          //             fit: BoxFit.cover,
          //           ),
          //           ),
          //               ),
          //             ),
          //       ],
          // ),


                // const SizedBox(height: 20,),


                customSearchBox(text: 'Looking for shoes')
          

                  ],
                )
                
                              ),
            )
          ),

         
            Positioned(
              top: 100,
               width: size.width,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

                  customBrandButton(
                    image: 'assets/brands/nike_logo.png',
                    click: true,
                    text: 'Nike',
                   
                    // action: () => setState(() {
                    //   onClick = true;
                    // })
                  ),

                  customBrandButton(
                    image: 'assets/brands/puma_logo.png'
                  ),

                   customBrandButton(
                    image: 'assets/brands/amour_logo.png'
                  ),


                   customBrandButton(
                    image: 'assets/brands/addidas_logo.png'
                  ),

                   customBrandButton(
                    image: 'assets/brands/converse_logo.png'
                  ),             
                ],
            ),
              )),


            Positioned(
            top: 170,
            width: size.width,
            child:
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                height: 220,

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    const Text('Popular Shoes',style: TextStyle(color: Color(0xFF1A2530),fontSize: 16,fontWeight: FontWeight.w500),),
                    InkWell(
                      onTap: (){
                         Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const BestSellerScreen()),
                                
                              );
                      },
                      child:const Text('Best Sellers',
                      style: TextStyle(
                        color: kMainColor,
                        fontSize: 14,
                        ),),

                    )
                    ],
                  ),



                  const SizedBox(height: 10,),

                  SizedBox(
                    height: 180,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder: (context, index) => 
                      InkWell(
                        onTap:()=> Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const ProuctScreen()),
                              ),
                        child: customProductWidget(
                          size: size.width/2 - 40
                          ),
                      )),
                  ),



                 
                ],
              ),
            ),
            )
            // InkWell(
            //   onTap: () =>  Navigator.push(
            //                     context,
            //                     MaterialPageRoute(builder: (context) => const ProuctScreen()),
            //                   ),
            //   child: customProductWidget(size: size.width/2 - 40)
            //   ),
            ),
            
   
              Positioned(
                top: 390,
                width: size.width,
                child: Container(
                  height: 160,
                  padding:const EdgeInsets.symmetric(horizontal: 20),
                  decoration:const BoxDecoration(
                    boxShadow: [
                    BoxShadow(
                        color: Colors.white38,
                        blurRadius: 0.5,
                        spreadRadius: 4,
                        offset: Offset(10, 10), // shadow direction: bottom right
                    )
                ],
                  ),
                // color: Colors.black,

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [

                  const Text('New Arrivals',style: TextStyle(color: Color(0xFF1A2530),fontSize: 16,fontWeight: FontWeight.w500),),

                  const SizedBox(height: 10,),

                  Container(
                    height: 120,
                    width: size.width,
                    padding:const EdgeInsets.all(10),
                    // color: Colors.black,
                    decoration:const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15))
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Best Choice' ,style: TextStyle(color: kMainColor,fontSize: 14,fontWeight: FontWeight.w500),),

                        Text('Nike Air Jordan',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w500), )
                      
                      ],
                    ),

                    Container(
                      width: size.width/2 - 10,
                      
                      decoration: const BoxDecoration(
                          // color: Colors.black,
                          
                      ),
                      child: Transform.rotate(
                                angle: -math.pi / 60,
                                child: Container(
                                  height: 80,
                                  // width: size.width,
                                  decoration:const BoxDecoration(
                                    // color: Colors.red,
                                    image: DecorationImage(
                                      
                                      fit: BoxFit.contain,
                                      image: AssetImage('assets/images/shoe6.png'))
                                  ),
                                )
                            ),
                    )


                      ],
                    )
                    
                  )

                  ],
                ),

                
              )
              ),



          // bottom navigation bar
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              width: size.width,
              height: 90,
              decoration:const BoxDecoration(
                image: DecorationImage(
            image: AssetImage("assets/images/custom_bottom_nav.png"),
            fit: BoxFit.cover,
          ),
         
              ),
              child: Center(
                child: Stack(
                  
                  
                  children: [
                   
                    Center(
                      heightFactor: 0.6,
                      child: FloatingActionButton(backgroundColor: kMainColor,

                      elevation: 5.0, onPressed: () {
                          Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const CartScreen()),
                                
                              );
                      }, 
                      child: Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            color: kMainColor,
                            borderRadius: BorderRadius.circular(30.0),
                            image: const DecorationImage(
                            image: AssetImage("assets/icons/cart2_icon.png"),
                            fit: BoxFit.cover,
                          ),
                          ),
                        )
                      ),
                    ),

                    SizedBox(
                      width: size.width,
                      height: 80,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [

                          IconButton(
                            icon: Icon(
                              Icons.home_outlined,
                              color: currentIndex == 0 ? kMainColor : Colors.grey.shade400,
                            ),
                            onPressed: () {
                              setBottomBarIndex(0);
                              
                            },
                            splashColor: Colors.white,
                          ),


                          IconButton(
                              icon: Icon(
                                Icons.favorite_border_outlined,
                                color: currentIndex == 1 ? kMainColor : Colors.grey.shade400,
                              ),
                              onPressed: () {
                                setBottomBarIndex(1);
                                Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const FavouriteScreen()),
                                
                              );
                              }),
                          Container(
                            width: size.width * 0.20,
                          ),
                          IconButton(
                              icon: Icon(
                                Icons.notifications_none_outlined,
                                color: currentIndex == 2 ? kMainColor : Colors.grey.shade400,
                              ),
                              onPressed: () {
                                setBottomBarIndex(2);
                                 Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const NotificationsScreen()),
                                
                              );
                              }),
                          IconButton(
                              icon: Icon(
                                Icons.person_outline,
                                color: currentIndex == 3 ? kMainColor : Colors.grey.shade400,
                              ),
                              onPressed: () {
                                setBottomBarIndex(3);
                                Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const AccountSettingsScreen()),
                                
                              );
                              }),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        
        
        
        ],
      ),
    );

  }
}

class BNBCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint =  Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    Path path = Path();
    
    path.moveTo(0, -15); // Start

    path.quadraticBezierTo(size.width * 0.20, 10, size.width * 0.35, 10);
    path.quadraticBezierTo(size.width * 0.40, 10, size.width * 0.40, 30);
    path.arcToPoint(Offset(size.width * 0.60, 30), radius:const Radius.circular(20), clockwise: false);
    path.quadraticBezierTo(size.width * 0.60, 10, size.width * 0.65, 10);
    path.quadraticBezierTo(size.width * 0.80, 10, size.width, -15);
    
    path.lineTo(size.width, size.height);
    
    path.lineTo(0, size.height);

    path.lineTo(0, 20);
    
    canvas.drawShadow(path, Colors.black, 5, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}