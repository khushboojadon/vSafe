import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:vSafe/first_screen.dart';

class Onboarding extends StatefulWidget {
  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  var pages = [
    PageViewModel(
      title: "Stay home stay safe",
    
      body:
          "You are not stuck at home, you're safe at home. One word can change your attitude, and one cough can change your life",
      image: Center(
          child: Image.asset(
        "images/stayhome.png",
        height: 175,
      ),
      ),
     decoration: const PageDecoration(pageColor: Color(0xFF053f5e)),
      footer: RaisedButton(
        onPressed: () {
          // On button presed
        },
        child: const Text("Let's Go !"),
      ),
    ),
    PageViewModel(
      title: "Wear a mask",
      body:
          "Wash the hands before wearing it.\n Never reuse without washing it.",
      image: Center(
          child: Image.asset(
        'images/mask.png',
        height: 175,
      )),
     decoration: const PageDecoration(pageColor: Color(0xFF053f5e)),
      footer: RaisedButton(
        onPressed: () {
          // On button presed
        },
        child: const Text("Let's Go !"),
      ),
    ),
        PageViewModel(
      title: "Social Distancing",
      body:
          "Social distancing only works if we all participate",
      image: Center(
          child: Image.asset(
        'images/social.jpeg',
        height: 175,
      )),
     decoration: const PageDecoration(pageColor: Color(0xFF053f5e)),
      footer: RaisedButton(
        onPressed: () {
          // On button presed
        },
        child: const Text("Let's Go !"),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: pages,
        onDone: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => FirstScreen()));
        },
        onSkip: () {
          // You can also override onSkip callback
        },
        showSkipButton: true,
        skip: const Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        next: const Icon(
          Icons.arrow_forward,
          color: Colors.white,
        ),
        done: const Text("Done", style: TextStyle(fontWeight: FontWeight.w600)),
        dotsDecorator: DotsDecorator(
              size: const Size.square(10.0),
            activeSize: const Size(20.0, 10.0),
            activeColor: Colors.white,
            color: Colors.white,
            spacing: const EdgeInsets.symmetric(horizontal: 3.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0))),
      ),
    );
  }
}
