import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'parallex.dart';

void main() {
  runApp(para());
}

class para extends StatefulWidget {
  const para({super.key});

  @override
  State<para> createState() => _paraState();
}

class _paraState extends State<para> {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: parallex(),
    );
  }
}
