// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'Home.dart';

class landing_Page extends StatelessWidget {
  const landing_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: ListView(
        children: <Widget>[
          const SizedBox(height: 10),
          Stack(children: [
            Container(
              height: 300,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.lightGreen, // inner circle color
              ),
            ),
          ]),
          // SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Container(
              height: 300,
              width: 420,
              color: Colors.black,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    "Welcome to",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    "Our Workout Club",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    "Plan your workout instantly from the app",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Home()));
                    },
                    child: Container(
                        height: 30,
                        width: 200,
                        decoration: BoxDecoration(
                            color: Colors.lime,
                            // border: Border.all(),
                            borderRadius: BorderRadius.circular(15)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.apple),
                            const Text('Login with apple')
                          ],
                        )),
                  ),
                  const SizedBox(height: 20),
                  // Container(
                  //     height: 30,
                  //     width: 200,
                  //     decoration: BoxDecoration(
                  //         //color: Colors.transparent,
                  //         border: Border.all(color: Colors.lightGreen),
                  //         borderRadius: BorderRadius.circular(15)),
                  //     child: Row(
                  //       mainAxisAlignment: MainAxisAlignment.center,
                  //       children: [
                  //         Icon(
                  //           Icons.mail,
                  //           color: Colors.white,
                  //           size: 20,
                  //         ),
                  //         Text(
                  //           'Login with mail',
                  //           style: TextStyle(color: Colors.white),
                  //         )
                  //       ],
                  // )),
                  SizedBox(
                    width: 200,
                    child: OutlinedButton.icon(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.mail,
                        color: Colors.white,
                        size: 20,
                      ),
                      label: const Text(
                        'Login with mail',
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ButtonStyle(
                          side: MaterialStateProperty.all(const BorderSide(
                              color: Colors.lightGreen,
                              width: 1.0,
                              style: BorderStyle.solid)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ))),
                    ),
                  ),
                  const SizedBox(height: 20),
                  RichText(
                      text: const TextSpan(children: <TextSpan>[
                    TextSpan(
                        text: 'Not a Member?',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        )),
                    TextSpan(
                        text: ' Sign up',
                        style: TextStyle(
                          color: Colors.lightGreen,
                          fontSize: 15,
                        ))
                  ]))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
