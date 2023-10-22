// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            // Hello again!
            Text(
              'Hello Bruh!',
              style: GoogleFonts.kufam(
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'You have been missed!',
              style: GoogleFonts.bentham(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 50),

            //email text
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(20.0)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Email',
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 10),

            //password text
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(20.0)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: TextFormField(
                    // controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Password',
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 20),

            //sign in
            SizedBox(
              height: 50,
              width: 375,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Sign In'),
                style: ElevatedButton.styleFrom(
                  elevation: 40,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),

            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 25.0),
            //   child: Container(
            //     padding: EdgeInsets.all(20.0),
            //     decoration: BoxDecoration(
            //         color: Colors.blue,
            //         borderRadius: BorderRadius.circular(12)),
            //     child: Center(
            //       child: Text(
            //         'Sign In',
            //         style: GoogleFonts.basic(
            //           color: Colors.white,
            //           fontWeight: FontWeight.bold,
            //           fontSize: 18,
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            SizedBox(height: 20),

            //not a member

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Not a Member? '),
                SizedBox(
                  child: TextButton(
                      onPressed: () {}, child: const Text(' Register Here!')),

                  //   style: TextStyle(
                  //       color: Colors.blue, fontWeight: FontWeight.bold),
                  // ),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text('GOOGLE'),
                    ),
                    TextButton(
                      onPressed: (() {}),
                      child: const Text("GITHUB"),
                    )
                  ],
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
