// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Widgets/contactwidget.dart';
import 'navbar.dart';

class Searchpage extends StatefulWidget {
  const Searchpage({super.key});

  @override
  State<Searchpage> createState() => _SearchpageState();
}

class _SearchpageState extends State<Searchpage> {
  List<String> statuses = ['Active', 'Inactive', 'Pending'];
  List<String> companies = ['Company A', 'Company B', 'Company C'];

  // Selected filter values
  String? selectedStatus;
  String? selectedCompany;
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
              Text("Search"),
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
                          labelText: 'Search a Contact/Lead',
                          prefixIcon: Icon(Icons.search, size: 35,),
                          suffixIcon: DropdownButton<String>(
                            value: selectedStatus,
                            hint: Text('Status'),
                            onChanged: (String? newValue) {
                              setState(() {
                                selectedStatus = newValue;
                              });
                            },
                            items: ['Active', 'Inactive', 'Pending'].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                // ----------Company Dropdown
                // Row(
                //   children: [
                //     DropdownButton<String>(
                //       value: selectedCompany,
                //       hint: Text('Select Company'),
                //       onChanged: (String? newValue) {
                //         setState(() {
                //           selectedCompany = newValue;
                //         });
                //       },
                //       items: ['Company A', 'Company B', 'Company C'].map<DropdownMenuItem<String>>((String value) {
                //         return DropdownMenuItem<String>(
                //           value: value,
                //           child: Text(value),
                //         );
                //       }).toList(),
                //     ),
                //   ],
                // ),
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
