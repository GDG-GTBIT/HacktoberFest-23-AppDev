import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './providerclass.dart';
import 'home2.dart';

void main() {
  runApp(const ProApp());
}

class ProApp extends StatefulWidget {
  const ProApp({super.key});

  @override
  State<ProApp> createState() => _ProAppState();
}

class _ProAppState extends State<ProApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => SavedData(),
        child: const MaterialApp(
          home: Home2(),
          debugShowCheckedModeBanner: false,
        ));
  }
}
