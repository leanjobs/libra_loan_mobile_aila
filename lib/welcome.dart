import 'package:flutter/material.dart';
import 'package:libraloan_mobile_aila/sign_in.dart';
import 'package:libraloan_mobile_aila/sign_up.dart';

class Welcome extends StatelessWidget {
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
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Transform.translate(
                      offset:
                          Offset(-75, 0), // Move book.png slightly to the left
                      child: Image.asset(
                        'assets/images/book.png',
                        width: 130, // Adjust the width as needed
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20), // Add some spacing between the images
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Transform.translate(
                      offset:
                          Offset(75, 0), // Move book3.png slightly to the right
                      child: Image.asset(
                        'assets/images/book3.png',
                        width: 130, // Adjust the width as needed
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20), // Add some spacing between the images
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Transform.translate(
                      offset:
                          Offset(-75, 0), // Move book2.png slightly to the left
                      child: Image.asset(
                        'assets/images/book2.png',
                        width: 130, // Adjust the width as needed
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40), // Add spacing before the text
                Text(
                  'Join us today !!',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 10), // Add some spacing between the texts
                Text(
                  'Makes it easier to borrow books',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black54,
                  ),
                ),
                SizedBox(height: 40), // Add spacing before the buttons
                SizedBox(
                  width: double.infinity, // Set the width for the button
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigate to the sign-up screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpScreen()),
                      );
                    },
                    child: Text('Get Started'),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: Color(0xFFA8C2F6), // Text color
                    ),
                  ),
                ),
                SizedBox(height: 10), // Add some spacing between the buttons
                SizedBox(
                  width: double.infinity, // Set the width for the button
                  child: OutlinedButton(
                    onPressed: () {
                      // Navigate to the sign-in screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignInScreen()),
                      );
                    },
                    child: Text('Sign In'),
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Color(0xFFA8C2F6),
                      side:
                          BorderSide(color: Color(0xFFA8C2F6)), // Border color
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
