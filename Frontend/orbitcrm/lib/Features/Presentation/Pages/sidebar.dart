// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              // image: DecorationImage(
              //   image: AssetImage('assets/breezy.jpg'),
              //   fit: BoxFit.cover,
              // ),
              color: Colors.grey,
            ),
            accountName: Text("John Doe", style: TextStyle(fontWeight: FontWeight.bold),),
            accountEmail: Text("Johndoe@gmail.com"),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  width: 90,
                  height: 90,
                  'assets/user1.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),

          ListTile(
            leading: Icon(Icons.person_2_outlined),
            title: Text("Account"),
            onTap: () {
              Navigator.pushNamed(context, '/educationpage');
            },
          ),

          ListTile(
              leading: Icon(Icons.search),
              title: Text("Search"),
              onTap: () {}),
          ListTile(
            leading: Icon(Icons.group_outlined),
            title: Text("Contacts"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.email_outlined),
            title: Text("Messages"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.exit_to_app,
              color: Colors.red,
            ),
            title: Text(
              "Logout",
              style: TextStyle(color: Colors.red),
            ),
            onTap: () {
            },
          ),
        ],
      ),
    );
  }
}
