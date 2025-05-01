import 'package:assignment7/screen/login.dart';
import 'package:flutter/material.dart';

class IntroScreen3 extends StatelessWidget {
  const IntroScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 60, //to resizr the app bar
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
          SizedBox(height: 40),

          Image.asset("assets/images/image5.png", height: 374, width: 264),

          ListTile(
            title: Text(
              "Improve your skills",
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

              Icon(Icons.circle_rounded, size: 8, color: Colors.grey),
              Icon(
                Icons.rectangle_rounded,
                size: 10,
                color: const Color.fromARGB(255, 67, 164, 206),
              ),
            ],
          ),
          SizedBox(height: 150),

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
                  MaterialPageRoute(builder: (context) => Login()),
                );
              },
              child: Text(
                "Lets' Start",
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
