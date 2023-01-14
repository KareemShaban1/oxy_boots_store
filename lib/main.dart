import 'package:flutter/material.dart';
import 'package:oxy_store/configrations/app_styles.dart';
import 'package:oxy_store/pages/onboarding_screens/onboard_screen.dart';
import 'package:splashscreen/splashscreen.dart';



void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home:const Splash(),
      debugShowCheckedModeBanner: false,
      );

  }
}


class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      backgroundColor:kMainColor,
      useLoader: false,
      seconds: 4,
      navigateAfterSeconds:const OnboardingPage(),
      title:const Text('OXY BOOTS',textScaleFactor: 2,style: TextStyle(color: Color(0xFFFFFFFF) ),),
      // image: new Image.network('https://www.geeksforgeeks.org/wp-content/uploads/gfg_200X200.png'),
      // loadingText: Text("Loading"),
      // photoSize: 100.0,
      // loaderColor: Colors.blue,
    );
  }
}
