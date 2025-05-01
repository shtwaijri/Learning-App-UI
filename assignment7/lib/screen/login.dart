import 'package:assignment7/screen/home_screen.dart';
import 'package:assignment7/screen/signup.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String name = '--';
  final fieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 48, //to resizr the app bar
        backgroundColor: Colors.white,
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("assets/images/image8.png", height: 343, width: 253),

          ListTile(
            title: Text(
              "Log in",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                height: 2,
              ),
            ),

            subtitle: Text(
              "Login with your social networks",
              style: TextStyle(color: Color.fromARGB(255, 120, 116, 109)),
              textAlign: TextAlign.center,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FaIcon(
                FontAwesomeIcons.squareFacebook,
                size: 40,
                color: Color.fromARGB(255, 101, 170, 234),
              ),
              SizedBox(width: 8),
              FaIcon(
                FontAwesomeIcons.squareInstagram,
                size: 40,
                color: Color.fromARGB(255, 101, 170, 234),
              ),
              SizedBox(width: 8),
              FaIcon(
                FontAwesomeIcons.squareGooglePlus,
                size: 40,
                color: Color.fromARGB(255, 101, 170, 234),
              ),
            ],
          ),
          SizedBox(height: 16),

          SizedBox(
            width: 380,
            child: Column(
              children: [
                TextField(
                  enabled: true,
                  controller: fieldController,
                  decoration: InputDecoration(
                    hintText: "Email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 190, 186, 179),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 16),
                TextField(
                  enabled: true,
                  controller: fieldController,
                  decoration: InputDecoration(
                    suffixIcon: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [FaIcon(FontAwesomeIcons.eye, size: 18)],
                    ),

                    hintText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 190, 186, 179),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 16),

                Text(
                  "Forgot Password?",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 120, 116, 109),
                  ),
                ),

                SizedBox(height: 16),

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
                      name = fieldController.text;
                      setState(() {});
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                      );
                    },
                    child: Text(
                      "Log in",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 56,
                  width: 311,

                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: Color.fromARGB(0, 255, 255, 255),

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                    ),

                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Signup()),
                      );
                    },
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                        color: Color.fromARGB(255, 120, 116, 109),
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
