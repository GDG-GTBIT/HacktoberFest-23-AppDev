import 'dart:ui';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class parallex extends StatefulWidget {
  const parallex({super.key});

  @override
  State<parallex> createState() => _parallexState();
}

class _parallexState extends State<parallex> {
  late ScrollController main_scroll;

  @override
  void initState() {
    main_scroll = ScrollController()
      ..addListener(() {
        setscroll();
      });
    super.initState();
  }

  double offset = 0;

  void setscroll() {
    setState(() {
      offset = main_scroll.offset;
      print(offset);
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var eigt = size.height * 2;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Color.fromARGB(255, 23, 113, 82),
              Color.fromARGB(255, 147, 249, 185)
            ])),
        child: Stack(children: [
          Positioned(
              bottom: offset - 10,
              right: 0,
              left: -5,
              child: SvgPicture.asset('asstes/mountains-layer-4.svg')),
          Positioned(
              bottom: offset - 30,
              right: 0,
              left: 0,
              child: SvgPicture.asset('asstes/mountains-layer-2.svg')),
          Positioned(
              bottom: offset - 55,
              right: 0,
              left: 0,
              child: SvgPicture.asset('asstes/trees-layer-2.svg')),
          Positioned(
              bottom: offset - 80,
              right: 0,
              left: 0,
              child: SvgPicture.asset('asstes/layer-1.svg')),
          Positioned(
            top: size.height + (offset * -1 * 1),
            right: 0,
            left: 0,
            height: size.height * 1.5,
            child: Container(
              color: Colors.black,
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    width: 275,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: GradientBoxBorder(
                        gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(255, 23, 113, 82),
                            Color.fromARGB(255, 147, 249, 185)
                          ],
                        ),
                        width: 5,
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: GradientText(
                        "GDSC - GTBIT",
                        overflow: TextOverflow.fade,
                        style: GoogleFonts.josefinSans(
                            color: Colors.white,
                            fontStyle: FontStyle.normal,
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1),
                        colors: [
                          Color.fromARGB(255, 29, 151, 108),
                          // Color.fromARGB(255, 0, 130, 200),
                          // Color.fromARGB(255, 0, 130, 200),
                          Color.fromARGB(255, 147, 249, 185)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned.fill(
              child: SingleChildScrollView(
            controller: main_scroll,
            child: SizedBox(height: eigt),
          )),
        ]),
      ),
    );
  }
}
