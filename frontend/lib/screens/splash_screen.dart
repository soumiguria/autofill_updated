import 'package:flutter/material.dart';
import 'package:frontend/screens/login_screen.dart';
import 'package:frontend/services/authentication_services.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final AuthenticationService _authenticationService = AuthenticationService();
  bool _showLogo = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        _showLogo = true;
      });
      Future.delayed(Duration(seconds: 2), () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => LoginScreen()), 
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          AnimatedOpacity(
            duration: Duration(seconds: 2),
            opacity: _showLogo ? 0 : 1,
            child: Image.asset(
              'assets/images/autofill_splash_updated.png', 
              fit: BoxFit.cover,
            ),
          ),
          AnimatedOpacity(
            duration: Duration(seconds: 2),
            opacity: _showLogo ? 1 : 0,
            child: Container(
              color: Colors.black,
            ),
          ),
          AnimatedOpacity(
            duration: Duration(seconds: 2),
            opacity: _showLogo ? 1 : 0,
            child: Center(
              child: Container(
                margin: EdgeInsets.only(bottom: 20),
                height: 100,
                width: 200,
                decoration: BoxDecoration(
                  // color: Colors.black.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(
                  'assets/images/autofill_logo-removebg-preview.png', 
                  width: 300, 
                  height: 500, 
                ),
              ),
            ),
          ),
          if (!_showLogo)
            Positioned.fill(
              child: Center(
                // child: CircularProgressIndicator(),
              ),
            ),
        ],
      ),
    );
  }
}
