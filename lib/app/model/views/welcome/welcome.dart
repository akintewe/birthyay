import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_provider/path_provider.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          'assets/images/bg.png',
          fit: BoxFit.cover,
        ),
        Column(
          children: [
            SizedBox(
              height: 80,
            ),
            SizedBox(
              child: Image.asset('assets/images/ballon.png'),
            ),
            Align(
              alignment: Alignment.center,
              child: RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: 'Birth',
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        color: Colors.black)),
                TextSpan(
                    text: 'YAY',
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        color: Colors.purple))
              ])),
            ),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.center,
              child: RichText(
                  text: TextSpan(children: [
                TextSpan(
                  text: 'Never miss the important events of',
                  style: GoogleFonts.roboto(
                    fontSize: 12,
                    color: Color.fromRGBO(53, 15, 80, 1),
                  ),
                )
              ])),
            ),
            Align(
              alignment: Alignment.center,
              child: RichText(
                  text: TextSpan(children: [
                TextSpan(
                  text: 'those you care so much about',
                  style: GoogleFonts.roboto(
                    fontSize: 12,
                    color: Color.fromRGBO(53, 15, 80, 1),
                  ),
                )
              ])),
            ),
            SizedBox(
              height: 45,
            ),
            Align(
              alignment: Alignment.center,
              child: Image.asset('assets/images/WecomeProfiles.png'),
            ),
            SizedBox(
              height: 40,
            ),
            Align(
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  height: 45,
                  width: 350,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(90),
                      gradient: LinearGradient(
                          colors: [Colors.deepPurple, Colors.purpleAccent],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight)),
                  child: Center(
                    child: Text(
                      'Get Started',
                      style: GoogleFonts.roboto(
                          fontSize: 12,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    ));
  }
}
