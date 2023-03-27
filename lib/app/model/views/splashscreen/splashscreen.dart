import 'package:flutter/material.dart';


import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    // TODO: implement initState
    super.initState();

    _navigatetologin();
  }

  _navigatetologin() async {
    await Future.delayed(Duration(seconds: 4), () {});
    // Navigator.pushReplacement(
    //     context, MaterialPageRoute(builder: (context) => IntroPage()));
    context.go('/welcomeScreen');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Icon(Icons.party_mode)));
  }
}
