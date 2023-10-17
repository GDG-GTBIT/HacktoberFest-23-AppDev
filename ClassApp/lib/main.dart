import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:try1/models/user.dart';
import 'package:try1/screens/wrapper.dart';
import 'package:try1/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:try1/services/auth.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<CustomUser?>.value(
      initialData: CustomUser(uid: 'null'),
      value: AuthService().user,
      child: const MaterialApp(
        title: 'ClassApp',
         debugShowCheckedModeBanner: false,
        home: Wrapper(),
       ),
    );
   }
 }







