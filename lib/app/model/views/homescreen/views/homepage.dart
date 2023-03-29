import 'package:birthyay/app/model/views/homescreen/widgets/day_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  final String text;
  const HomePage({super.key, required this.text});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
          SizedBox(),
        ],
      ),
    );
  }
}
