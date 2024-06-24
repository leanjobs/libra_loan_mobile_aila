import 'package:flutter/material.dart';
import 'package:libraloan_mobile_aila/categories.dart';
import 'package:libraloan_mobile_aila/navbar/bottom_bar.dart';
import 'package:libraloan_mobile_aila/popular.dart';
import 'package:libraloan_mobile_aila/profile.dart';
import 'package:libraloan_mobile_aila/activity_request.dart';
import 'package:libraloan_mobile_aila/book_detail.dart';
import 'package:libraloan_mobile_aila/homepage.dart';
import 'package:libraloan_mobile_aila/activity_approve.dart';
import 'package:libraloan_mobile_aila/saved_books.dart';
import 'package:libraloan_mobile_aila/sign_in.dart';
import 'package:libraloan_mobile_aila/sign_up.dart';
import 'package:libraloan_mobile_aila/thank_you.dart';
import 'package:libraloan_mobile_aila/welcome.dart';

void main() {
  runApp(const RunBang());
}

class RunBang extends StatelessWidget {
  const RunBang({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 255, 255, 255),
      ),
      routes: {
        // "/": (context) => HomePage(),
        "/": (context) => HomePage(),
        "/homepage": (context) => HomePage(),
        "/profile": (context) => Profile(),
        "/activityrequest": (context) => MyActivityRequest(),
        "/bookdetail": (context) => BookDetail(),
        // "/activitycontinue": (context) => MyActivityContinue(),
        "/savedbooks": (context) => SavedBooks(),
        "/signup": (context) => SignUpScreen(),
        "/signin": (context) => SignInScreen(),
        "/categories": (context) => Categories(),
        "/popular": (context) => Popular(),
        "/thank": (context) => ThankYouScreen(),
        "/bottombar": (context) => BottomBar(),
      },
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Simulate a long running operation to fetch data
    Future.delayed(Duration(seconds: 3), () {
      // Navigate to the next screen after 3 seconds
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => Welcome()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFDEE8FF),
              Color(0xFFF1F6FF),
            ],
          ),
        ),
        child: Center(
          child: Image.asset(
            'assets/images/logo.png',
            width: 200, // Adjust the width as needed
          ),
        ),
      ),
    );
  }
}
