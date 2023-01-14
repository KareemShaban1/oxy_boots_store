import 'package:flutter/material.dart';
import 'package:oxy_store/configrations/app_styles.dart';
import 'package:oxy_store/configrations/size_configs.dart';
import 'dart:math' as math;
import 'package:oxy_store/models/onboarding_data.dart';
import '../../widgets/widgets.dart';
import '../authentication_screens/Sign_In_screen.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int currentPage = 0;

  final PageController _pageController = PageController(initialPage: 0);

  AnimatedContainer dotIndicator(index) {
    return AnimatedContainer(
      margin: const EdgeInsets.only(right: 8),
      duration: const Duration(milliseconds: 400),
      height: 5,
      width: currentPage == index ? 24 : 8,
      decoration: BoxDecoration(
        color: currentPage == index ? kMainColor : kDotColor,
        borderRadius: BorderRadius.circular(8),
        shape: BoxShape.rectangle,
      ),
    );
  }

  // Future setSeenOnboarding() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   seenOnboard = await prefs.setBool('seenOnboard', true);
  //   // this will set seenOnboard to true when running onboarding page for the first time.
  // }

  @override
  void initState() {
    super.initState();
    // calll setSeenOnboarding() here
    // setSeenOnboarding();
  }

  @override
  Widget build(BuildContext context) {
    // initialize size config
    SizeConfig().init(context);
    double sizeVertical = SizeConfig.blockSizeVertical!;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(

        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),

          child: Stack(
            children: [

              Positioned(
                top: -150,
                right: -150,
                child: SizedBox(
                  height: 300,
                  width: 300,
                  child: Image.asset(
                      'assets/images/shape1.png',
                    fit: BoxFit.fitWidth,

                  ),
                ),
              ),

              Positioned(
                top: 140,

                child: SizedBox(
                  height: 250,
                  width: SizeConfig.screenWidthPadding ,
                  child: Image.asset(
                    'assets/images/shape2.png',
                    fit: BoxFit.fitWidth,

                  ),
                ),
              ),

              Positioned(
                top: 140,

                child: SizedBox(
                  height: 300,
                  width: SizeConfig.screenWidthPadding,
                  child: Image.asset(
                    'assets/images/shape3.png',
                    fit: BoxFit.fitHeight,

                  ),
                ),
              ),

              PageView.builder(
                controller: _pageController,
                onPageChanged: (value) {
                  setState(
                        () {
                      currentPage = value;
                    },
                  );
                },
                itemCount: onboardingContents.length,
                itemBuilder: (context, index) => Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [




                    SizedBox(
                      height: sizeVertical * 8,
                    ),
                    Transform.rotate(
                        angle: -math.pi / 40,
                        child: SizedBox(
                          height: 250,
                          width: SizeConfig.screenWidthPadding,
                          child: Image.asset(
                            onboardingContents[index].image,
                            fit: BoxFit.contain,
                          ),
                        ),
                    ),

                    SizedBox(
                      height: sizeVertical * 9,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        onboardingContents[index].title,
                        style: kTitleOnboarding,

                      ),
                    ),
                    SizedBox(
                      height: sizeVertical * 1,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        onboardingContents[index].subtitle,
                        style: kSubtitleOnboarding,
                        maxLines: 3,
                      ),
                    ),
                    SizedBox(
                      height: sizeVertical * 5,
                    ),
                  ],
                ),
              ),


              Positioned(
                width: SizeConfig.screenWidthPadding,
                bottom: 30,

                child: Column(


                  children: [
                    // to make dynamic view based on page position
                    currentPage == onboardingContents.length - 3
                        ? Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Row(
                            children: List.generate(
                              onboardingContents.length,
                                  (index) => dotIndicator(index),
                            ),
                          ),
                        
                        

                        defaultButton(

                          width: 165,
                          height: 40,
                          name: 'Get Started',

                          onPressed: () {
                            _pageController.nextPage(
                              duration: const Duration(
                                milliseconds: 400,
                              ),
                              curve: Curves.easeInOut,
                            );
                          },

                          buttonColor:kMainColor,
                        )
                      ],
                    )
                        : Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [


                            Row(
                              children: List.generate(
                                onboardingContents.length,
                                    (index) => dotIndicator(index),
                              ),
                            ),



                          defaultButton(
                            width: 105,
                            height: 40,
                            name: 'Next',
                            onPressed: () {

                              currentPage == 2 ?

                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const SignIn()),
                              )
                                  : _pageController.nextPage(
                                duration: const Duration(
                                  milliseconds: 400,
                                ),
                                curve: Curves.easeInOut,
                              )
                              ;

                            },
                            buttonColor: kMainColor,
                          )
                      ],

                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}