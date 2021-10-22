import 'package:flutter/material.dart';
import 'package:responsive_web/landing_page/landing_page.dart';
import 'package:responsive_web/navbar/navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive Web App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "Montserrat",
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Color.fromRGBO(195, 20, 50, 1.0),
            Color.fromRGBO(36, 11, 54, 1.0)
          ],
        )),
        child: SingleChildScrollView(
          child: Column(
            children: const [NavBar(), Padding(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              child: LandingPage(),
            )],
          ),
        ),
      ),
    );
  }
}
