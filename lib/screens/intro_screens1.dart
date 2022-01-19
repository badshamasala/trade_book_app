import 'package:flutter/material.dart';
import 'package:flutter_application_1/dummy/globals.dart';
import 'package:flutter_application_1/screens/signup_page.dart';

import 'package:introduction_screen/introduction_screen.dart';


class IntroScreen1 extends StatefulWidget {
  const IntroScreen1({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _IntroScreen1();
  }
}

class _IntroScreen1 extends State<IntroScreen1> {
  @override
  Widget build(BuildContext context) {
    PageDecoration pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(
          fontSize: 28.0, fontWeight: FontWeight.w700, color: Colors.black),
      bodyTextStyle: TextStyle(fontSize: 19.0, color: Colors.black),
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      imagePadding: EdgeInsets.all(20),
      boxDecoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          stops: [0.4,0.6],
          colors: [
              Colors.white,
                      Colors.white
          ],
        ),
      ),
    );

    return IntroductionScreen(
      globalBackgroundColor:    Colors.white,
                  
      pages: [
        PageViewModel(
          title: "Tradebook",
          body: "Higher Returns through Investment",
          image: introImage('assets/about1.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Fractional shares",
          body: "Secure and Safe investing",
          image: introImage('assets/about2.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Fractional shares",
          body: "Zero Comissions,No minimums",
          image: introImage('assets/about3.png'),
          decoration: pageDecoration,
        ),
      ],
      onDone: () => goHomepage(context),
      onSkip: () => goHomepage(context),
      showSkipButton: true,
      skipFlex: 0,
      nextFlex: 0,
      skip: const Text(
        'Skip',
        style: TextStyle(color: Colors.black),
      ),
      next: const Icon(
        Icons.arrow_forward,
        color: Colors.black,
      ),
      done: const Text(
        'Getting Stated',
        style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
      ),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Colors.grey,
        activeColor: appcolor,
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }

  void goHomepage(context) {
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) {
      return const SignUpPage();
    }), (Route<dynamic> route) => false);
  }

  Widget introImage(String assetName) {
    return Align(
      child: Image.asset(assetName, width: 350.0),
      alignment: Alignment.bottomCenter,
    );
  }
}
