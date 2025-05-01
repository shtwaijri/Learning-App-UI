import 'package:assignment7/screen/home_screen.dart';
import 'package:assignment7/screen/login.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _LoginState();
}

class _LoginState extends State<Signup> {
  String name = '--';
  final fieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 64, //to resizr the app bar
        backgroundColor: Colors.white,
        centerTitle: true,
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("assets/images/image6.png", height: 343, width: 253),

          ListTile(
            title: Text(
              "Sign up",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                height: 2,
              ),
            ),

            subtitle: Text(
              "Create your account",
              style: TextStyle(color: Color.fromARGB(255, 120, 116, 109)),
              textAlign: TextAlign.center,
            ),
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
                    hintText: "Name",
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
                Column(
                  children: [
                    TextField(
                      enabled: true,
                      controller: fieldController,
                      decoration: InputDecoration(
                        suffixIcon: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            FaIcon(FontAwesomeIcons.eyeSlash, size: 18),
                          ],
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
                  ],
                ),
                SizedBox(height: 16),

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
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                      );
                    },
                    child: Text(
                      "Sign up",
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
                      name = fieldController.text;
                      setState(() {});
                      print("$name");

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                      );
                    },
                    child: Text(
                      "Log in",
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
