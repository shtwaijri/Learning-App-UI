import 'package:assignment7/screen/intro_screen3.dart';
import 'package:flutter/material.dart';

class IntroScreen2 extends StatelessWidget {
  const IntroScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 70, //to resizr the app bar
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Text(
          "Skip",
          textAlign: TextAlign.left,
          style: TextStyle(fontSize: 16),
        ),
      ),

      body: Column(
        children: [
          SizedBox(height: 150),
          Image.asset("assets/images/image4.png"),
          SizedBox(height: 48),

          ListTile(
            title: Text(
              "Find a course\n for you",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              "Quarantine is the perfect time to spend your\n day learning something new, from anywhere!",
              style: TextStyle(color: Color.fromARGB(255, 120, 116, 109)),
              textAlign: TextAlign.center,
            ),
          ),

          SizedBox(height: 30),

          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.circle_rounded, size: 8, color: Colors.grey),

              Icon(
                Icons.rectangle_rounded,
                size: 10,
                color: const Color.fromARGB(255, 67, 164, 206),
              ),
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
                  MaterialPageRoute(builder: (context) => IntroScreen3()),
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
