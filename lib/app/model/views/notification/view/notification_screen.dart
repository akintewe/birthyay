import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(
          height: 35.5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: Color.fromRGBO(110, 37, 136, 1),
                )),
            Text(
              'Notifications',
              style: GoogleFonts.roboto(
                fontWeight: FontWeight.w700,
                fontSize: 16,
              ),
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more_vert_rounded,
                ))
          ],
        ),
        SizedBox(
          height: 32.5,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'New',
              style: GoogleFonts.roboto(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(53, 15, 80, 1)),
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          height: 80,
          width: 390,
          decoration: BoxDecoration(color: Color.fromRGBO(247, 231, 255, 1)),
          child: Row(
            children: [
              Image.asset(
                'assets/icons/notification_profile.png',
              ),
              SizedBox(
                width: 27,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Send Grand Pops’ a gift today is his\n83rd birthday',
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Color.fromRGBO(53, 15, 80, 1)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 160),
                    child: Text(
                      '13 hours ago',
                      style: GoogleFonts.roboto(
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(200, 80, 192, 1)),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    ));
  }
}
