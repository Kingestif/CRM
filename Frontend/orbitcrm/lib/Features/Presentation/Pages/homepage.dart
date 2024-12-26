// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:orbitcrm/Features/Presentation/Pages/sidebar.dart';

import 'navbar.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    // switch (index) {
    //   case 0:
    //     Navigator.pushNamed(context, '/homepage');
    //     break;
    //   case 1:
    //     Navigator.pushNamed(context, '/educationpage');
    //     break;
    //   case 2:
    //     Navigator.pushNamed(context, '/telemedicinepage');
    //     break;
    //   case 3:
    //     break;
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Sidebar(),

      appBar: AppBar(
        title: Center(
          child: Row(

            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Spacer(),
              // Text("Home", style: TextStyle(fontWeight: FontWeight.bold),),
              GestureDetector(
                  onTap: () async {
                    await FirebaseAuth.instance.signOut();
                    Navigator.pushNamed(context, '/loginPage');
                  },
                  child: Icon(Icons.logout_outlined, size: 35, color: Colors.red,)
              ),
            ],
          ),
        ),
      ),

      body: Align(
        alignment: Alignment.topCenter,
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.9,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(top:5),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hello, John",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),

                      ClipOval(child: Image.asset('assets/user1.jpeg', width: 35, height: 35,))
                    ],
                  ),

                  SizedBox(
                    height: 30,
                  ),

                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade600,
                      borderRadius:
                      BorderRadius.circular(30),
                    ),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Welcome",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  color: Colors.black,
                                ),
                              ),

                              Text(
                                "Ready to make your first connection? ",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              SizedBox(
                                height: 20,
                              ),

                              ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    textAlign: TextAlign.center,
                                    "Add Contact",

                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ))
                            ],
                          ),
                        ),

                        Image.asset(
                          'assets/Head1.png',
                          width: 130,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 20,),

                  Container(
                    padding: EdgeInsets.only(top: 30, bottom: 5),
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Toolbox",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 10,
                  ),

                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(children: [
                      _getFeatures("Notification"),

                      SizedBox(
                        width: 15,
                      ),

                      _getFeatures("Connections"),
                      SizedBox(
                        width: 15,
                      ),
                      _getFeatures("Leads"),
                      SizedBox(
                        width: 15,
                      ),
                      _getFeatures("Profile"),
                    ]),
                  ),

                  SizedBox(height: 40),

                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          child: Container(
                            width: 150,
                            padding: EdgeInsets.only(
                              top: 10,
                              bottom: 10,
                            ),

                            decoration: BoxDecoration(
                              color: Colors.blue.shade600,
                              borderRadius: BorderRadius.circular(
                                  15),
                            ),

                            child: Column(
                              children: [
                                Image.asset('assets/useradd1.png'),
                                SizedBox(height: 10),

                                Text(
                                  "Contact",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                SizedBox(height: 10),

                                Text(
                                  textAlign: TextAlign.center,
                                  "Add and organize your contacts",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),

                        SizedBox(
                          width: 20,
                        ),

                        GestureDetector(
                          child: Container(
                            width: 150,
                            padding: EdgeInsets.only(top: 10, bottom: 10),
                            decoration: BoxDecoration(
                              color: Colors.blue.shade600,
                              borderRadius: BorderRadius.circular(
                                  15),
                            ),

                            child: Column(
                              children: [
                                Image.asset('assets/leadadd1.png'),
                                SizedBox(height: 10),
                                Text(
                                  "text",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                SizedBox(height: 10),

                                Text(
                                  textAlign: TextAlign.center,
                                  "Track and manage potential clients.",

                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),

      bottomNavigationBar: CustomBottomNavBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}

Widget _getFeatures(String data) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.grey.shade300,
      borderRadius: BorderRadius.circular(20),
    ),
    padding: EdgeInsets.all(10),
    child: Text(
      data,
      style: TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold),
    ),
  );
}
