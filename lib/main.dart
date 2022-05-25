import 'package:flutter/material.dart';
import 'package:vazifa/pages/animation.dart';
import 'package:vazifa/pages/contacts.dart';
import 'package:vazifa/pages/france.dart';
import 'package:vazifa/pages/home_page.dart';
import 'package:vazifa/pages/settings.dart';
import 'package:vazifa/pages/tepadan_pasga_page.dart';
void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ContactPage(),
      routes: {
        France.id:(context)=>const France(),
        HomePage.id:(context)=>const HomePage(),
        HomePage1.id:(context)=>const HomePage1(),
        ContactPage.id:(context)=>const ContactPage(),
        SettingsPage.id:(context)=>const SettingsPage(),
        AnimationPage.id:(context)=>const AnimationPage(),
      },
    );
  }
}
