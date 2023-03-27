import 'package:birthyay/app/model/views/logins/views/login2.dart';
import 'package:birthyay/app/model/views/logins/views/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class Login1 extends StatefulWidget {
  const Login1({super.key});

  @override
  State<Login1> createState() => _Login1State();
}

class _Login1State extends State<Login1> {
  late String? _textInput;

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
                height: 234,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Welcome',
                  style: GoogleFonts.roboto(
                      fontSize: 20,
                      color: Color.fromRGBO(53, 15, 80, 1),
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(color: Colors.purple)),
                  child: TextField(
                    onChanged: (text) {
                      setState(() {
                        _textInput = text;
                      });
                    },
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      hintText: 'Email',
                      hintStyle:
                          TextStyle(color: Color.fromRGBO(110, 37, 136, 1)),
                      border: InputBorder.none,
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Login2(text: _textInput!),
                      ),
                    );
                  },
                  child: Container(
                    height: 50,
                    width: 350,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(90),
                        gradient: LinearGradient(
                            colors: [Colors.deepPurple, Colors.purpleAccent],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight)),
                    child: Center(
                      child: Text(
                        'Continue',
                        style: GoogleFonts.roboto(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 1,
                    width: 120,
                    color: Colors.black,
                  ),
                  Text(
                    'or',
                    style: GoogleFonts.roboto(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    height: 1,
                    width: 120,
                    color: Colors.black,
                  ),
                ],
              ),
              SizedBox(
                height: 27,
              ),
              Align(
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 50,
                    width: 350,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(90),
                        gradient: LinearGradient(
                            colors: [
                              Color.fromRGBO(201, 197, 254, 1),
                              Color.fromRGBO(249, 211, 253, 1),
                              Color.fromRGBO(249, 211, 253, 1)
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight)),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/icons/newfacebook.png'),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Continue with Facebook',
                            style: GoogleFonts.roboto(
                                fontSize: 12,
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 50,
                    width: 350,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(90),
                        gradient: LinearGradient(
                            colors: [
                              Color.fromRGBO(201, 197, 254, 1),
                              Color.fromRGBO(249, 211, 253, 1),
                              Color.fromRGBO(249, 211, 253, 1)
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight)),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/icons/google_icon.png'),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Continue with Google',
                            style: GoogleFonts.roboto(
                                fontSize: 12,
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.center,
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Signup()));
                  },
                  child: RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: 'Don’t have an account?',
                        style: GoogleFonts.roboto(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                      TextSpan(
                        text: 'Sign up',
                        style: GoogleFonts.roboto(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(53, 15, 80, 1)),
                      ),
                    ]),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
