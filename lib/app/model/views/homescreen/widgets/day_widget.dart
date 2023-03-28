import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class DayWidget extends StatefulWidget {
  final String day;
  const DayWidget({super.key, required this.day});

  @override
  State<DayWidget> createState() => _DayWidgetState();
}

class _DayWidgetState extends State<DayWidget> {
  bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isSelected = !_isSelected;
        });
      },
      child: Container(
        height: 22,
        width: 75,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: _isSelected
                ? Color.fromRGBO(200, 80, 192, 1)
                : Color.fromRGBO(255, 255, 255, 1)),
        child: Center(
          child: Text(
            widget.day,
            style: GoogleFonts.roboto(
                color: _isSelected
                    ? Color.fromRGBO(255, 255, 255, 1)
                    : Color.fromRGBO(0, 0, 0, 1)),
          ),
        ),
      ),
    );
  }
}
