import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:birthyay/app/model/views/homescreen/widgets/day_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/card_widget.dart';

class HomePage extends StatefulWidget {
  final String text;
  const HomePage({super.key, required this.text});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 98,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Hi ${widget.text},',
                            style: GoogleFonts.roboto(
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Here are today’s update:',
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  Image.asset('assets/images/profile.png')
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(color: Colors.white)),
                child: TextField(
                  onChanged: (text) {},
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    prefixIcon: Image.asset(
                      'assets/icons/search-normal.png',
                      height: 10,
                    ),
                    hintText: 'Search birthYAY',
                    hintStyle: TextStyle(
                        color: Color.fromRGBO(110, 37, 136, 1),
                        fontSize: 10,
                        fontWeight: FontWeight.w400),
                    border: InputBorder.none,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DayWidget(day: 'Today'),
                DayWidget(day: 'Week'),
                DayWidget(day: 'Month'),
                DayWidget(day: 'Year'),
              ],
            ),
            SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 205,
                      width: 350,
                      color: Colors.transparent,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                  text: '27.March',
                                  style: GoogleFonts.roboto(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                ),
                                WidgetSpan(
                                    child: SizedBox(
                                  width: 10,
                                )),
                                TextSpan(
                                  text: 'Sunday',
                                  style: GoogleFonts.roboto(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                )
                              ])),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 175,
                            width: 350,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/newback.png')),
                                borderRadius: BorderRadius.circular(20)),
                            child: Stack(
                              children: [
                                Positioned(
                                    left: 20,
                                    top: 15,
                                    child: Image.asset(
                                        'assets/images/grandpa.png')),
                                Positioned(
                                    right: 20,
                                    top: 15,
                                    child: Image.asset(
                                        'assets/icons/whiteheart.png')),
                                Positioned(
                                    bottom: 70,
                                    left: 20,
                                    child: Text(
                                      'Grand Pops',
                                      style: GoogleFonts.roboto(
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white,
                                          fontSize: 16),
                                    )),
                                Positioned(
                                    bottom: 50,
                                    left: 20,
                                    child: Text(
                                      'March, 1940',
                                      style: GoogleFonts.roboto(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white,
                                          fontSize: 12),
                                    )),
                                Positioned(
                                    bottom: 70,
                                    right: 20,
                                    child: Text(
                                      '83',
                                      style: GoogleFonts.roboto(
                                          fontWeight: FontWeight.w800,
                                          color: Colors.white,
                                          fontSize: 24),
                                    )),
                                Positioned(
                                    bottom: 50,
                                    right: 20,
                                    child: Text(
                                      'Today',
                                      style: GoogleFonts.roboto(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white,
                                          fontSize: 12),
                                    )),
                                Positioned(
                                    right: 150,
                                    bottom: 10,
                                    child: Image.asset(
                                      'assets/icons/yaygift.png',
                                    )),
                                Positioned(
                                    right: 152,
                                    bottom: 7,
                                    child: Text(
                                      'Send a Gift',
                                      style: GoogleFonts.roboto(
                                          color: Colors.white, fontSize: 7),
                                    )),
                                Positioned(
                                    right: 110,
                                    bottom: 10,
                                    child: Image.asset(
                                      'assets/icons/messenger.png',
                                    )),
                                Positioned(
                                    right: 108,
                                    bottom: 7,
                                    child: Text(
                                      'Messenger',
                                      style: GoogleFonts.roboto(
                                          color: Colors.white, fontSize: 7),
                                    )),
                                Positioned(
                                    right: 200,
                                    bottom: 10,
                                    child: Image.asset(
                                        'assets/icons/whatsappicon.png')),
                                Positioned(
                                    right: 201,
                                    bottom: 7,
                                    child: Text(
                                      'Whatsapp',
                                      style: GoogleFonts.roboto(
                                          color: Colors.white, fontSize: 7),
                                    )),
                                Positioned(
                                    child:
                                        Image.asset('assets/images/cakes.png'))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 205,
                      width: 350,
                      color: Colors.transparent,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                  text: '28.March',
                                  style: GoogleFonts.roboto(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                ),
                                WidgetSpan(
                                    child: SizedBox(
                                  width: 10,
                                )),
                                TextSpan(
                                  text: 'Monday',
                                  style: GoogleFonts.roboto(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                )
                              ])),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 175,
                            width: 350,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/secondbackground.png')),
                                borderRadius: BorderRadius.circular(20)),
                            child: Stack(
                              children: [
                                Positioned(
                                    left: 25,
                                    bottom: 10,
                                    child: Image.asset(
                                        'assets/images/ballonback.png'))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 205,
                      width: 350,
                      color: Colors.transparent,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                  text: '29.March',
                                  style: GoogleFonts.roboto(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                ),
                                WidgetSpan(
                                    child: SizedBox(
                                  width: 10,
                                )),
                                TextSpan(
                                  text: 'Tuesday',
                                  style: GoogleFonts.roboto(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                )
                              ])),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 175,
                            width: 350,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(255, 204, 112, 0.96),
                                borderRadius: BorderRadius.circular(20)),
                            child: Stack(
                              children: [
                                Positioned(
                                    left: 25,
                                    bottom: 10,
                                    child: Image.asset(
                                        'assets/images/ballonback.png'))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Upcoming birthdays',
                  style: GoogleFonts.roboto(
                    fontSize: 12,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            CardWidget(
              age: '22',
              name: 'Nimnomiobong Ntatam',
              image: 'assets/images/friends_img.png',
              daysLeft: 'in 5days',
              date: '02',
              month: '.April',
            ),
            CardWidget(
              age: '22',
              name: 'Chisom Anizor Johnson',
              image: 'assets/images/friends_img2.png',
              daysLeft: 'in 5days',
              date: '02',
              month: '.April',
            ),
            CardWidget(
              age: '22',
              name: 'Ireoluwa Binuyo Anumi',
              image: 'assets/images/friends_img3.png',
              daysLeft: 'in 5days',
              date: '02',
              month: '.April',
            ),
            CardWidget(
              age: '22',
              name: 'Ireoluwa Binuyo Anumi',
              image: 'assets/images/friends_img3.png',
              daysLeft: 'in 5days',
              date: '02',
              month: '.April',
            ),
          ],
        ),
      ),
    );
  }
}
