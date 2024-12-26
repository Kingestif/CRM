// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:orbitcrm/Features/Presentation/Pages/contacts.dart';
import 'package:orbitcrm/Features/Presentation/Pages/homepage.dart';
import 'package:orbitcrm/Features/Presentation/Pages/sidebar.dart';

import 'navbar.dart';

class Message extends StatefulWidget {
  const Message({super.key});

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
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
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          drawer: Sidebar(),

          appBar: AppBar(
            automaticallyImplyLeading: true,

            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Icon(Icons.notes_rounded, size: 35,),
                Text("Messages"),
                Icon(Icons.notifications_none, size: 35),
              ],
            ),
            centerTitle: true,
            bottom: TabBar(
                tabs: [
                  Tab(text: 'Pending',),
                  Tab(text: 'Approved',),
                  Tab(text: 'Rejected',),
                ]
            ),
          ),

          body: TabBarView(children: [
            // Pendingpage(),
            // Approvedpage(),
            // Rejectedpage(),
          ]),

          bottomNavigationBar: CustomBottomNavBar(
            selectedIndex: _selectedIndex,
            onItemTapped: _onItemTapped,
          ),
        )
    );
  }
}
