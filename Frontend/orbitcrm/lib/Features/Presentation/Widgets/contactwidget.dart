// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Contactwidget extends StatelessWidget {
  const Contactwidget({super.key, required this.name, required this.phone, required this.email});

  final String name;
  final String phone;
  final String email;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            ClipOval(child: Image.asset('assets/user1.jpeg', width: 80, height: 80, )),

            SizedBox(width: 30,),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),),
                Row(
                  children: [
                    Text("Mob: ", style: TextStyle(color: Colors.grey.shade600),),
                    Text(phone, style: TextStyle(color: Colors.grey.shade600)),
                  ],
                ),

                Row(
                  children: [
                    Text("Email: ", style: TextStyle(color: Colors.grey.shade600)),
                    Text(email, style: TextStyle(color: Colors.grey.shade600)),
                  ],
                )
              ],
            ),
          ],
        ),

        SizedBox(height: 10,),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                Icon(Icons.assignment_ind_outlined, color: Colors.grey.shade700, size: 28,),
                Text("Update Contact", style: TextStyle(color: Colors.grey.shade700, fontSize: 15)),
              ],
            ),

            SizedBox(width: 50,),

            Row(
              children: [
                Icon(Icons.delete, color: Colors.red, size: 28,),
                Text("Delete Contact", style: TextStyle(color: Colors.red, fontSize: 15),),
              ],
            )
          ],
        ),

        SizedBox(height: 5,),

        Divider(
          color: Colors.grey.shade500,
          thickness: 1,
          indent: 20,
          endIndent: 20,
        ),

      ],
    );
  }
}
