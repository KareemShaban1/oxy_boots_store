import 'package:flutter/material.dart';
import 'package:oxy_store/models/menu_item.dart';
class MenuItems {
static const home = MenuItemClass(Icons.home_outlined,'Home','',true);
static const profile = MenuItemClass(Icons.person_outline,'Profile','',true);
static const cart = MenuItemClass(Icons.person,'My Cart','assets/icons/cart2_icon.png',false);
static const favourite = MenuItemClass(Icons.favorite_border,'Favourite','',true);
// static const orders = MenuItemClass(Icons.person_outline,'Orders','',true);
static const notification = MenuItemClass(Icons.person_outline,'Notification','',true);
static const signout = MenuItemClass(Icons.person_outline,'Sign Out','',true);



static const all = <MenuItemClass>[
  profile,
  home,
  cart,
  favourite,
  // orders,
  notification,
  signout
 
];
}

class MenuScreen extends StatelessWidget {
 

  final MenuItemClass currentItem ;
  final ValueChanged<MenuItemClass> onSelectedItem;
  
  const MenuScreen({super.key,required this.currentItem,required this.onSelectedItem});
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor:const Color(0xff1A2530),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(),

            Container(
              margin:const EdgeInsets.only(left: 15,bottom: 15),
                      height: 120,
                      width: 120,
                      decoration:const BoxDecoration(
                      // color: Colors.red,
                        // color: Colors.white
                      ),
                      child: Stack(

                        children: [
                          

                          Positioned(
                            top: 0,
                            left: 15,
                            child: Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                color: const Color(0xffDFEFFF),
                                borderRadius: BorderRadius.circular(70)
                              ),
                            ),
                          ),

                          Positioned(
                            top: 5,
                            left: 18,
                            child: SizedBox(
                              height: 57,
                              width: 57,
                              child: Image.asset('assets/images/profile.png',fit: BoxFit.contain,),
                            )),
                             const Positioned(
                              bottom: 25,
                              left: 5,
                              child: Text('Hey, 👋',
                              style: TextStyle(color: Color(0xff707B81), fontSize: 15,fontWeight: FontWeight.bold),)),
                            
                            const Positioned(
                              bottom: 0,
                              left: 5,
                              child: Text('Alisson becker',
                              style: TextStyle(color: Colors.white, fontSize: 15,fontWeight: FontWeight.bold),))
                        ],
                      )),
          //  const Spacer(),
            ...MenuItems.all.map(buildMenuItem).toList(),
            const Spacer(flex: 2,),
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem (MenuItemClass item){
    return ListTileTheme(
      selectedColor: Colors.white,
      child: ListTile(
        selectedTileColor: Colors.black26,
        selected: currentItem == item,
        minLeadingWidth: 25,
        leading:item.isIcon  ? Icon(item.icon,color:const Color(0xff707B81),) : Image.asset(item.image!,color:const Color(0xff707B81),),
        title: Text(item.title,style:const TextStyle(color: Colors.white),),
        onTap: ()=> onSelectedItem(item),
      ),
    );
  }
}