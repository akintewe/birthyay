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
      ],
    ));
  }
}
