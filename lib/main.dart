import 'package:flutter/material.dart';
import 'package:hhcorp/screens/splash_screen.dart';
import 'package:hhcorp/screens/auth/login_screen.dart';
import 'package:hhcorp/screens/auth/signup_screen.dart';
import 'package:hhcorp/screens/auth/forgotpassword_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // initialRoute: '/',  // specify home route
      // routes: {
      //   '/': (context) => LoginScreen(),
      //   // '/profile': (context) => ProfileScreen(),
      //   '/login': (context) => LoginScreen(),
      //   // '/signup' : (context) => SignUpScreen().
      //   // add other routes here...
      // },
      home: SplashScreen(),  // Use your HomeScreen here
    );
  }
}