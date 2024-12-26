import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:orbitcrm/Features/Presentation/Pages/contacts.dart';
import 'package:orbitcrm/Features/Presentation/Pages/leads.dart';
import 'package:orbitcrm/Features/Presentation/Pages/searchpage.dart';

import 'Features/Presentation/Pages/homepage.dart';
import 'Features/Presentation/Pages/loginpage.dart';
import 'Features/Presentation/Pages/message.dart';
import 'Features/Presentation/Pages/signuppage.dart';
import 'Features/Presentation/Pages/splashscreen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const Splashscreen(),
        '/loginPage': (context) => const Loginpage(),
        '/signupPage': (context) => const Signuppage(),
        '/homePage': (context) => const Homepage(),
        '/leadsPage': (context) => const Leads(),
        '/contactsPage': (context) => const Contacts(),
        '/searchPage': (context) => const Searchpage(),
        '/messagePage': (context) => const Message(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

