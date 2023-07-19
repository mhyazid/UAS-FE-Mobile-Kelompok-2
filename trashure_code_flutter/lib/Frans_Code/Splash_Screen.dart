import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:trashure_code_flutter/Frans_Code/Log-in_Sign-In_Screen.dart';
import 'package:page_transition/page_transition.dart';

class Splash_Screen extends StatelessWidget {
  const Splash_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      nextScreen: const Login_Sign(),
      splash: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              padding: EdgeInsets.only(top: 150),

              // color: Colors.deepOrangeAccent,
              child: Image.asset(
                "assets/logo final.jpg",
                cacheHeight: 229,
              )),
          SizedBox(height: 100),
          CircularProgressIndicator(
            color: Color.fromRGBO(153, 235, 60, 100),
          )
        ],
      ),
      backgroundColor: Colors.trashure,
      splashIconSize: 600,

      // duration: 5000,
      // pageTransitionType: PageTransitionType.bottomToTopPop,
      // splashTransition: ,
    );
  }
}
