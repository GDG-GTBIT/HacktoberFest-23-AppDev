import 'package:flutter/material.dart';
import 'package:try1/screens/home/settings_form.dart';
import 'package:try1/screens/home/student_list.dart';
import 'package:try1/services/auth.dart';
import 'package:try1/services/database.dart';
import 'package:provider/provider.dart';
import 'package:try1/models/student.dart';

class Home extends StatelessWidget {
  // home is a stateless widget

  final AuthService _auth = AuthService();

  Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    void _showsettingsPanel() {
      showModalBottomSheet(
          context: context,
          builder: (context) {
            return Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 60.0),
              child: const SettingsForm(),
            );
          });
    }

    return StreamProvider<List<Student>>.value(
      value: DatabaseService(uid: '').students,
      initialData: const [],
      child: Scaffold(
        backgroundColor: Colors.blueAccent[100],
        appBar: AppBar(
          backgroundColor: Colors.blue[500],
          title: const Text('Students'),
          foregroundColor: Colors.black,
          elevation: 0.0,
          actions: <Widget>[
            TextButton.icon(
              onPressed: () async {
                await _auth.signOut();
              },
              icon: const Icon(Icons.person, color: Colors.black),
              label: const Text(
                'Logout',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
              ),
            ),
            TextButton.icon(
              icon: const Icon(Icons.settings, color: Colors.black),
              label: const Text(
                'Settings',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
              ),
              onPressed: () => _showsettingsPanel(),
            ),
          ],
        ),
        body: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/bg_2.png"), fit: BoxFit.cover)),
            child: const Stulist()),
      ),
    );
  }
}
