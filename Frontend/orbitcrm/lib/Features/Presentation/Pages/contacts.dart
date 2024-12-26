// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:orbitcrm/Features/Presentation/Widgets/contactwidget.dart';
import 'package:orbitcrm/Features/Presentation/Widgets/leadwidget.dart';

import 'navbar.dart';

class Contacts extends StatefulWidget {
  const Contacts({super.key});

  @override
  State<Contacts> createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 0:
        Navigator.pushNamed(context, '/homepage');
        break;
      case 1:
        Navigator.pushNamed(context, '/educationpage');
        break;
      case 2:
        Navigator.pushNamed(context, '/telemedicinepage');
        break;
      case 3:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.notes_rounded, size: 35,),
              Text("Contacts"),
              Icon(Icons.notifications_none, size: 35),
            ],
          ),
        ),
      ),

      body: Align(
        alignment: Alignment.topCenter,

        child: Container(
          width: MediaQuery.of(context).size.width * 0.9,

          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Search a Contact',
                          prefixIcon: Icon(Icons.search, size: 35,),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 10,),

                Contactwidget(name: "John Doe", phone: "0900987886", email: "JohnDoe@gmail.com"),
                Contactwidget(name: "John Doe", phone: "0900987886", email: "JohnDoe@gmail.com"),
                Contactwidget(name: "John Doe", phone: "0900987886", email: "JohnDoe@gmail.com"),
                Contactwidget(name: "John Doe", phone: "0900987886", email: "JohnDoe@gmail.com"),
              ],
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
