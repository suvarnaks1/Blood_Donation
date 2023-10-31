import 'package:blooddonation_app/firebase_options.dart';
import 'package:blooddonation_app/signinpage.dart';
import 'package:flutter/material.dart';
import 'project1/home.dart';
import 'project1/add.dart';
import 'package:firebase_core/firebase_core.dart';
import './update.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp(),
    
  );
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Demo App",
      routes: {
        '/Signinpage':(context)=>Signinpage(),
        // '/': (context) => HomePage(),
        // '/add': (context) => AddUser(),
        // '/Update':(context) => UpdateDoner(),
      },
      initialRoute: '/Signinpage',
    );
  }
}
