import 'package:birthyay/app/model/views/homescreen/views/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/go_router.dart';

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
            ],
          ),
        ],
      ),
    );
  }
}
