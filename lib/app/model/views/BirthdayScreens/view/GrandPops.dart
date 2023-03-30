import 'package:birthyay/app/model/views/homescreen/views/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class GrandPops extends StatefulWidget {
  const GrandPops({super.key});

  @override
  State<GrandPops> createState() => _GrandPopsState();
}

class _GrandPopsState extends State<GrandPops> {
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
                height: 84,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomePage(),
                            ));
                      },
                      icon: Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: Color.fromRGBO(110, 37, 136, 1),
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite_border_outlined,
                        color: Color.fromRGBO(53, 15, 80, 1),
                      ))
                ],
              ),
              SizedBox(
                height: 29,
              ),
              Align(
                alignment: Alignment.center,
                child: Image.asset('assets/images/p_pic.png'),
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Grand Pops',
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  '83 Years',
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Birthday Today',
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Social_widget(
                        icon: 'assets/icons/call.png',
                      ),
                      Social_widget(
                        icon: 'assets/icons/whatsapp.png',
                      ),
                      Social_widget(
                        icon: 'assets/icons/facebook.png',
                      ),
                      Social_widget(
                        icon: 'assets/icons/ph_gift-light.png',
                      ),
                    ],
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

class Social_widget extends StatefulWidget {
  final String icon;
  const Social_widget({
    Key? key,
    required this.icon,
  }) : super(key: key);

  @override
  State<Social_widget> createState() => _Social_widgetState();
}

class _Social_widgetState extends State<Social_widget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              color: Color.fromRGBO(110, 37, 136, 1),
            )),
        child: Center(
          child: Image.asset(widget.icon),
        ),
      ),
    );
  }
}
