import 'package:flutter/material.dart';
import 'package:try1/models/student.dart';
import 'package:provider/provider.dart';
import 'package:try1/screens/home/student_tile.dart';

class Stulist extends StatefulWidget {
  const Stulist({Key? key}) : super(key: key);

  @override
  State<Stulist> createState() => _StulistState();
}

class _StulistState extends State<Stulist> {
  @override
  Widget build(BuildContext context) {
    final students = Provider.of<List<Student>>(context);
    return ListView.builder(
        itemCount: students.length,
        itemBuilder: (context, index) {
          return StudentTile(student: students[index]);
        });
  }
}
