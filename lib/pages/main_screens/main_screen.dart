import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:oxy_store/models/menu_item.dart';
import 'package:oxy_store/pages/main_screens/cart_screen.dart';
import 'package:oxy_store/pages/main_screens/drawer_menu_screen.dart';
import 'package:oxy_store/pages/main_screens/favourite_screen.dart';
import 'package:oxy_store/pages/main_screens/home_screen.dart';
import 'package:oxy_store/pages/main_screens/notifications_screen.dart';
import 'package:oxy_store/pages/main_screens/profile_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  MenuItemClass currentItem = MenuItems.home;

  @override
  Widget build(BuildContext context) {
    return  ZoomDrawer(
      slideWidth: 240,
      style: DrawerStyle.Style1,
      mainScreen:getScreen(),
      menuScreen: Builder(
        builder: (context) {
          return MenuScreen(
            currentItem: currentItem,
            onSelectedItem: (item){
              setState(() {
                currentItem = item;
                ZoomDrawer.of(context)!.close();
              });
            },
          );
        }
      ),
    );
  }
  Widget getScreen(){
    switch(currentItem){
      case MenuItems.home:
         return const HomeScreen();
      case MenuItems.profile:
         return const ProfileScreen();
      case MenuItems.cart:
         return const CartScreen();   
      case MenuItems.favourite:
         return const FavouriteScreen();      
      case MenuItems.notification:
         return const NotificationsScreen();   
    }
    return Container();
  }
}