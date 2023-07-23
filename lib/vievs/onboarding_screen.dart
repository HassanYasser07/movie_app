import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:movie_app_ui/constants.dart';

import '../components/custom_outline.dart';
class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHight =MediaQuery.of(context).size.height;
    final screenWidth =MediaQuery.of(context).size.width;
    return  Scaffold(
      backgroundColor: Constants.kBlackColor ,
      body: Container(
        width: screenWidth,
        height: screenHight,
        child: Stack(
          children: [
            Positioned(
              top: screenHight *0.1,
                left: -88,
                child: Container(
              width: 166,
              height: 166,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Constants.kPinkColor,

              ),
               child: BackdropFilter(
                 filter: ImageFilter.blur(sigmaX:120,sigmaY: 120),
               child: Container(
                 width: 166,
                 height: 166,
               ),
               ),

            )),
            Positioned(
              top: screenHight*0.3,
                right: -100,
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Constants.kGreenColor,
                  ),
                  child: BackdropFilter(filter: ImageFilter.blur(sigmaY: 100,sigmaX: 100),
                  child: Container(
                    width: 200,
                    height: 200,
                  ),),
                )),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: screenHight *0.07,
                  ),
                  CustomOutline(
                    strokeWidth: 4,
                    radius: screenWidth *0.8,
                    gradient:LinearGradient(
                    begin: Alignment.topLeft,end: Alignment.bottomRight,colors: [
                      Constants.kPinkColor,
                      Constants.kPinkColor.withOpacity(0),
                      Constants.kGreenColor.withOpacity(.1),
                      Constants.kGreenColor,
                  ],
                  ) ,
                    child:Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage("assets/img-onboarding.png",
                          ),
                          fit: BoxFit.cover,
                          alignment: Alignment.bottomLeft



                        )
                      ),
                      width: screenWidth *0.8,
                      height: screenHight *0.8,
                    ) ,
                    width: screenWidth *0.8 ,
                    height: screenHight *0.37,
                    padding: const EdgeInsets.all(4),),
                  SizedBox(
                    height: screenHight *.07,),
                  Text(
                    "Watch movies in \n Virtual Reality",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Constants.kWhiteColor,
                        fontSize: screenWidth <=600? 34:34,
                        fontWeight:FontWeight.w700
                    ),



                  ),
                  SizedBox(
                    height: screenHight *.07,),
                  Text(
                    "Download and watch offline \n wherever you art",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Constants.kWhiteColor.withOpacity(.75),
                        fontSize: screenWidth <=600? 16:16,
                        fontWeight:FontWeight.w100,
                    ),
                  ),
                  SizedBox(
                    height: screenHight *.03,
                  ),
                  CustomOutline(
                    strokeWidth: 4,
                    radius: screenWidth *0.8,
                    gradient:LinearGradient(
                      begin: Alignment.topLeft,end: Alignment.bottomRight,colors: [
                      Constants.kPinkColor.withOpacity(.5),
                      Constants.kGreenColor,
                    ],
                    ) ,
                    child:Container(
                      decoration:  BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Constants.kPinkColor.withOpacity(.3),
                          Constants.kGreenColor.withOpacity(.3),
                        ])
                      ),
                      child: Center(
                        child: Text("Sign Up",
                          style: TextStyle(
                            fontSize: screenHight >=600 ? 18 :14,
                            fontWeight: FontWeight.w700,
                            color: Colors.white
                          ),
                        ),
                      ),
                    ) ,
                    width: 180,
                    height: 50,
                    padding: const EdgeInsets.all(4),),
                  Spacer(),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(3, (index) => Container(
                        width: 7,
                        height: 7,
                        margin:EdgeInsets.symmetric(horizontal: 5) ,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: index==0 ?Constants.kGreenColor
                              :   Constants.kWhiteColor.withOpacity(.2)
                        ),
                      )),
                    ),
                  ),
                  SizedBox(
                    height: screenHight *.03,
                  )
                ],
              ),
            ),
          ],
        ) ,
      ),
    );
  }
}
