import 'package:flutter/material.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({super.key});

  @override
  State<ProductDetail> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 30, //to resizr the app bar
        backgroundColor: Colors.white,
      ),

      body: ListView(
        padding: const EdgeInsets.all(10), //to offset from the app bar

        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: [
              Text(
                "HTML                ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
                textAlign: TextAlign.center,
              ),
            ],
          ),

          SizedBox(height: 20), //to offset from the buttons

          Padding(padding: EdgeInsets.all(8)),

          //------------------------------------

          //------------------------------------------
          SizedBox(height: 16),
          Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    "assets/images/image9.png",
                    height: 257,
                    width: 375,
                  ),
                ],
              ),

              Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(
                      255,
                      101,
                      170,
                      234,
                    ), // background color
                    foregroundColor: Colors.white, // text color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    '\$50',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),

              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "About the course",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Text(
                "You can launch a new career in web develop-ment today by\nlearning HTML & CSS. You don't need a computer science\ndegree or expensive software. All you need is a computer, \na bit of time, a lot of determination, and a teacher you trust.",
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 16),

              //----------------
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "About the course",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                ],
              ),
            ],
          ),
          Text("1 h 30 min", style: TextStyle(fontSize: 14)),

          SizedBox(height: 147),

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

              onPressed: () {},
              child: Text(
                "Add to cart",
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

    //------------------------------------------------
  }
}
