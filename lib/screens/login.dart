// ignore_for_file: prefer_const_constructors

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pages/screens/signup.dart';

class Login extends StatefulWidget {
  const Login({super.key});
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              // child: Image.network(
              //   "",
              // ),
              radius: 50,
            ),
            SizedBox(
              height: 20,
            ),
            const Text("Welcome back!"),
            SizedBox(
              height: 20,
            ),
            const Text("Login to your account"),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
              child: Stack(children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 10, 0, 0),
                  child: SizedBox(
                    height: 35,
                    child: TextFormField(
                        decoration: const InputDecoration(
                            hintText: 'What do people call you?',
                            labelText: 'Name ',
                            isDense: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(45),
                                bottomRight: Radius.circular(45),
                              ),
                            ))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Icon(
                      Icons.person_outline,
                      color: Colors.blue,
                      size: 20.0,
                    ),
                  ),
                ),
              ]),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
              child: Stack(children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 10, 0, 0),
                  child: SizedBox(
                    height: 35,
                    child: TextFormField(
                        decoration: const InputDecoration(
                            labelText: 'Password',
                            isDense: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(45),
                                bottomRight: Radius.circular(45),
                              ),
                            ))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Icon(
                      Icons.lock_clock_outlined,
                      color: Colors.blue,
                      size: 20.0,
                    ),
                  ),
                ),
              ]),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Sign in'),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Or sign in with",
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        FontAwesomeIcons.google,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        FontAwesomeIcons.instagram,
                        color: Colors.pink[400],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        FontAwesomeIcons.facebook,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        FontAwesomeIcons.twitter,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                      text: "Don't have an account?",
                      style: TextStyle(
                        color: Colors.black,
                      )),
                  TextSpan(
                      text: ' Sign up here',
                      style: TextStyle(color: Colors.blue),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => Signup(),
                            ),
                          );
                        }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
