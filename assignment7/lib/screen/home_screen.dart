import 'package:assignment7/screen/product_detail.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 10, //to resizr the app bar
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
      ),

      body: ListView(
        padding: const EdgeInsets.all(10), //to offset from the app bar

        children: [
          Text("Hello,", style: TextStyle(fontSize: 16)),

          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Juana Antonieta                ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
                  ),
                  FaIcon(FontAwesomeIcons.bell),
                ],
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Color.fromARGB(255, 211, 209, 209),
                width: 3,
              ),
              borderRadius: BorderRadius.circular(8),
            ),

            child: SearchBar(
              backgroundColor: WidgetStateProperty.all(
                const Color.fromARGB(255, 255, 254, 254),
              ),
              shadowColor: WidgetStateProperty.all(
                const Color.fromARGB(0, 252, 252, 252),
              ),

              shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              ),

              trailing: [
                IconButton(onPressed: () {}, icon: Icon(Icons.search)),
              ],
              hintText: "Search course",
            ),
          ),

          SizedBox(height: 20),

          Row(
            spacing: 8,
            children: [
              Text("Category: ", style: TextStyle(fontSize: 14)),

              ElevatedButton(
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
                  '#CSS',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              ElevatedButton(
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
                  '#UX',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              ElevatedButton(
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
                  '#Swift',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),

              Padding(padding: EdgeInsets.all(8)),
              //------------------------------------
            ],
          ),

          SizedBox(height: 16),

          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Color.fromARGB(255, 211, 209, 209),
                width: 2,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 248, 242, 238),
                  ),

                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/image7.png",
                        height: 194,
                        width: 343,
                      ),
                    ],
                  ),
                ),

                Padding(padding: const EdgeInsets.only(left: 32)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "    3 h 30 min",
                      style: TextStyle(
                        color: Color.fromARGB(255, 91, 160, 146),
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                      // textAlign: TextAlign.right,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Material(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProductDetail(),
                            ),
                          );
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Text(
                            "  UI",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "   Advanced mobile interface design",
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ],
            ),
          ),

          //------------------------------------------
          SizedBox(height: 16),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Color.fromARGB(255, 211, 209, 209),
                width: 2,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 230, 237, 244),
                  ),

                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/image2.png",
                        height: 194,
                        width: 343,
                      ),
                    ],
                  ),
                ),

                Padding(padding: const EdgeInsets.only(left: 32)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "    3 h 30 min",
                      style: TextStyle(
                        color: Color.fromARGB(255, 91, 160, 146),
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                      // textAlign: TextAlign.right,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "  HTML",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "   Advanced mobile interface design",
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ],
            ),
          ),
          //------------------------------
          SizedBox(height: 10),

          SizedBox(height: 8),
        ],
      ),
    );

    //------------------------------------------------
  }
}
