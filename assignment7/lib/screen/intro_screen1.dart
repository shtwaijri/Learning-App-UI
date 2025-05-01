// import 'package:assignment7/screen/intro_screen2.dart';
import 'package:assignment7/screen/intro_screen2.dart';
import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IntroScreen1 extends StatefulWidget {
  const IntroScreen1({super.key});

  @override
  State<IntroScreen1> createState() => _IntroScreen1State();
}

class _IntroScreen1State extends State<IntroScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // leading: null,
        toolbarHeight: 70, //to resizr the app bar
        backgroundColor: Colors.white,

        title: Text(
          "Skip",
          textAlign: TextAlign.left,
          style: TextStyle(fontSize: 16),
        ),
      ),

      body: Column(
        children: [
          Image.asset("assets/images/image3.png", height: 375, width: 264),

          ListTile(
            title: Text(
              "Learn anytime\n and anywhere",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              "Quarantine is the perfect time to spend your\n day learning something new, from anywhere!",
              style: TextStyle(color: Color.fromARGB(255, 120, 116, 109)),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 40),

          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.rectangle_rounded,
                size: 10,
                color: const Color.fromARGB(255, 67, 164, 206),
              ),
              Icon(Icons.circle_rounded, size: 8, color: Colors.grey),
              Icon(Icons.circle_rounded, size: 8, color: Colors.grey),
            ],
          ),

          SizedBox(height: 110),

          SizedBox(
            height: 56,
            width: 311,

            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepOrange,

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
              ),

              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => IntroScreen2()),
                );
              },
              child: Text(
                "Next",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
