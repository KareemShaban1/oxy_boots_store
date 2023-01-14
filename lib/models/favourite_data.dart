import 'package:flutter/animation.dart';

class Favourite {
  String name;
  String price;
  String image;
  Color color1;
  Color color2;

  Favourite({
    required this.name,
    required this.price,
    required this.image,
    required this.color1,
    required this.color2
  });
}

List<Favourite> favouriteContent = [

  Favourite(
    name: "Nike Jordan", 
    price: "\$ 58.7", 
    image: 'assets/images/shoe4.png', 
    color1: const Color(0XFFFDFFA7), 
    color2: const Color(0XFF6CCFC0),
    ),
    
];

