import 'package:birthyay/app/model/views/logins/views/login2.dart';
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
  late String _textInput;

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
                    style: TextStyle(color: Colors.white),
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
              builder: (context) => Login2(text: _textInput),
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
            ],
          ),
        ],
      ),
    );
  }
}
