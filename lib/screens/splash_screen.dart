import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:hhcorp/screens/auth/login_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    startLoading();
  }

  startLoading() async {
    var duration = const Duration(seconds: 3); // Change this duration as per your requirement
    return Future.delayed(duration, () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => LoginScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/images/logo.png'), // Replace with your logo image asset
            const SizedBox(height: 30.0),
            const SpinKitCircle(color: Colors.black), // Use any loader widget you like
          ],
        ),
      ),
    );
  }
}