import 'package:flutter/material.dart';
import 'package:portfolio/home.dart';
import 'package:portfolio/photozoon.dart';
import 'package:portfolio/splachsceen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      routes: {
        '/': (context) => const SplashScreen(),
        '/home': (context) => const Home(), // Your Home widget
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {



  @override
  Widget build(BuildContext context) {

    return Scaffold(


       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
