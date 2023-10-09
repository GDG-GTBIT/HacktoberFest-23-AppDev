import 'dart:io';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final PageController ctrl = PageController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/orion.jpg'),
                    fit: BoxFit.fitHeight,
                  ),
                ),
                child: PageView(
                  scrollDirection: Axis.horizontal,
                  controller: ctrl,
                  children: [
                    Container(
                      child: (Text("hello")),
                      height: 200,
                      width: 200,
                      margin:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 100),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage('assets/moon-phase-02.png'),
                        ),
                      ),
                    ),
                    Container(
                      height: 200,
                      width: 200,
                      margin:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 100),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage('assets/moon-phase-03.png'),
                        ),
                      ),
                    ),
                    Container(
                      height: 200,
                      width: 200,
                      margin:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 100),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage('assets/moon-phase-04.png'),
                        ),
                      ),
                    ),
                    Container(
                      height: 200,
                      width: 200,
                      margin:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 100),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage('assets/moon-phase-05.png'),
                        ),
                      ),
                    ),
                    Container(
                      height: 200,
                      width: 200,
                      margin:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 100),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage('assets/moon-phase-06.png'),
                        ),
                      ),
                    ),
                    Container(
                      height: 200,
                      width: 200,
                      margin:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 100),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage('assets/moon-phase-07.png'),
                        ),
                      ),
                    ),
                    Container(
                      height: 200,
                      width: 200,
                      margin:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 100),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage('assets/moon-phase-08.png'),
                        ),
                      ),
                    ),
                    Container(
                      height: 200,
                      width: 200,
                      margin:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 100),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage('assets/moon-phase-09.png'),
                        ),
                      ),
                    ),
                    Container(
                      height: 200,
                      width: 200,
                      margin:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 100),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage('assets/moon-phase-10.png'),
                        ),
                      ),
                    ),
                    Container(
                      height: 200,
                      width: 200,
                      margin:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 100),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage('assets/moon-phase-11.png'),
                        ),
                      ),
                    ),
                    Container(
                      height: 200,
                      width: 200,
                      margin:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 100),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage('assets/moon-phase-12.png'),
                        ),
                      ),
                    ),
                    Container(
                      height: 200,
                      width: 200,
                      margin:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 100),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage('assets/moon-phase-13.png'),
                        ),
                      ),
                    ),
                    Container(
                      height: 200,
                      width: 200,
                      margin:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 100),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage('assets/moon-phase-14.png'),
                        ),
                      ),
                    ),
                    Container(
                      height: 200,
                      width: 200,
                      margin:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 100),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage('assets/moon-phase-15.png'),
                        ),
                      ),
                    ),
                    Container(
                      height: 200,
                      width: 200,
                      margin:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 100),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage('assets/moon-phase-16.png'),
                        ),
                      ),
                    ),
                    Container(
                      height: 200,
                      width: 200,
                      margin:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 100),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage('assets/moon-phase-17.png'),
                        ),
                      ),
                    ),
                    Container(
                      height: 200,
                      width: 200,
                      margin:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 100),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage('assets/moon-phase-18.png'),
                        ),
                      ),
                    ),
                    Container(
                      height: 200,
                      width: 200,
                      margin:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 100),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage('assets/moon-phase-19.png'),
                        ),
                      ),
                    ),
                    Container(
                      height: 200,
                      width: 200,
                      margin:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 100),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage('assets/moon-phase-20.png'),
                        ),
                      ),
                    ),
                    Container(
                      height: 200,
                      width: 200,
                      margin:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 100),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage('assets/moon-phase-21.png'),
                        ),
                      ),
                    ),
                    Container(
                      height: 200,
                      width: 200,
                      margin:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 100),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage('assets/moon-phase-22.png'),
                        ),
                      ),
                    ),
                  ],
                ))));
  }
}
