import 'package:flutter/material.dart';
import 'package:try1/models/student.dart';

class StudentTile extends StatelessWidget {
  final Student student;

  const StudentTile({Key? key, required this.student}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      // key: _scaffoldkey,
      child: Card(
        margin: const EdgeInsets.fromLTRB(20, 6, 20, 0),
        child: ListTile(
          leading: CircleAvatar(
            radius: 25.0,
            backgroundColor: Colors.blue[student.strength],
            backgroundImage: const AssetImage("assets/books.png"),
            child: Text(student.name[0],
                style: const TextStyle(fontWeight: FontWeight.bold)),
          ),
          title: Text(student.name),
          subtitle: Text('Likes ${student.subject} subjects'),
        ),
      ),
    );
  }
}
