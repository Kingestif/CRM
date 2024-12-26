// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:orbitcrm/Authentication/firebase_auth_implementation/firebase_auth_services.dart';

class Signuppage extends StatefulWidget {
  const Signuppage({super.key});

  @override
  State<Signuppage> createState() => _SignuppageState();
}

class _SignuppageState extends State<Signuppage> {
  final FirebaseAuthService _auth = FirebaseAuthService();


  TextEditingController _usernameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.9,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("OrbitCRM",
                      style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF1F319D))),

                  SizedBox(height: 30,),

                  TextField(
                    controller: _usernameController,
                    decoration: InputDecoration(
                      labelText: 'Username',
                      border: OutlineInputBorder(),
                    ),
                  ),

                  SizedBox(height: 20),

                  TextField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(),
                    ),
                  ),

                  SizedBox(height: 20),

                  TextField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(),
                    ),
                    obscureText: true,
                  ),

                  SizedBox(height: 30,),

                  ElevatedButton(
                    onPressed: _signUp,

                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF1F319D),
                        foregroundColor: Colors.white,
                        minimumSize: Size(
                            MediaQuery.of(context).size.width * 0.9, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        )
                    ),
                    child: Text("Sign up", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),
                  ),

                  SizedBox(height: 20,),

                  Center(child: Text("Or?", style: TextStyle(color: Colors.grey, fontSize: 17),)),

                  SizedBox(height: 15,),

                  // ElevatedButton(
                  //     onPressed: () {  },
                  //
                  //     style: ElevatedButton.styleFrom(
                  //         elevation: 0,
                  //         backgroundColor: Colors.grey.shade100,
                  //         foregroundColor: Colors.black,
                  //         minimumSize: Size(
                  //             MediaQuery.of(context).size.width * 0.9, 50),
                  //
                  //         shape: RoundedRectangleBorder(
                  //           borderRadius: BorderRadius.circular(30),
                  //           side: BorderSide(color: Colors.black, width: 0.2),
                  //         )
                  //     ),
                  //
                  //     child: Row(
                  //       mainAxisAlignment: MainAxisAlignment.center,
                  //       crossAxisAlignment: CrossAxisAlignment.center,
                  //       children: [
                  //         ClipOval(child: Image.asset("assets/GO1.png", width: 30, height: 30,)),
                  //         SizedBox(width: 10,),
                  //         Text("Continue with Google", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),
                  //       ],
                  //     )
                  // ),
                  //
                  // SizedBox(height: 50),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account? ", style: TextStyle(color: Colors.grey, fontSize: 17),),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/loginPage');
                        },
                          child: Text(" Sign in", style: TextStyle(color: Colors.blue, fontSize: 17),)
                      ),
                    ],
                  )


                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _signUp() async {
    String username = _usernameController.text;
    String email = _emailController.text;
    String password = _passwordController.text;

    User? user = await _auth.signUpWithEmailAndPassword(email, password);

    if(user != null){
      print("user successfully created");
      Navigator.pushNamed(context, '/homePage');
    } else{
      print("Some error happened: $user");
    }
  }
}

