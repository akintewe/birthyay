import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardWidget extends StatefulWidget {
  final String image;
  final String name;
  final String date;
  final String age;
  final String daysLeft;
  final String month;
  const CardWidget({
    Key? key,
    required this.image,
    required this.name,
    required this.date,
    required this.age,
    required this.daysLeft,
    required this.month,
  }) : super(key: key);

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Card(
          elevation: 1,
          color: Color.fromRGBO(247, 231, 255, 1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Image.asset(widget.image),
                SizedBox(
                  width: 5,
                ),
                Column(
                  children: [
                    Text(
                      widget.name,
                      style: GoogleFonts.roboto(
                          color: Color.fromRGBO(53, 15, 80, 1),
                          fontWeight: FontWeight.w500,
                          fontSize: 12),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 80),
                      child: RichText(
                          text: TextSpan(children: [
                        TextSpan(
                          text: widget.date,
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w700,
                            color: Color.fromRGBO(53, 15, 80, 1),
                            fontSize: 20,
                          ),
                        ),
                        TextSpan(
                          text: widget.month,
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(53, 15, 80, 1),
                            fontSize: 10,
                          ),
                        ),
                      ])),
                    )
                  ],
                ),
                SizedBox(
                  width: 54,
                ),
                Column(
                  children: [
                    Text(
                      '${widget.age}yrs',
                      style: GoogleFonts.roboto(
                          fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      widget.daysLeft,
                      style: GoogleFonts.roboto(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(53, 15, 80, 1),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Image.asset('assets/images/arrow-right.png'),
                )
              ],
            ),
          )),
    );
  }
}
