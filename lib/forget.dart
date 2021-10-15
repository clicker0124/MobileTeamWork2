import 'package:flutter/material.dart';
import 'signup.dart';

class Screen2 extends StatefulWidget {
  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Container(
          child: Stack(
            children: [
              Image.asset("assets/image/bg.png"),
              Column(
                children: [
                  SizedBox(
                    height: 290,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'Forgot Password',
                      style: TextStyle(
                          fontFamily: 'Times New Roman',
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.only(top: 20),
                            child: Text(
                              'Email',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            )),
                        Container(
                          height: 50,
                          child: TextField(
                            textAlign: TextAlign.justify,
                            decoration:
                                InputDecoration(hintText: 'Your email id'),
                          ),
                        ),
                        Container(
                          width: 300,
                          height: 50,
                          margin: EdgeInsets.only(top: 15),
                          child: OutlinedButton(
                              onPressed: null,
                              style: ButtonStyle(
                                backgroundColor: MaterialStateColor.resolveWith(
                                    (states) =>
                                        Color.fromARGB(255, 34, 56, 67)),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(19.0))),
                              ),
                              child: Stack(
                                children: [
                                  Container(
                                    child: const Text(
                                      "Submit",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  )
                                ],
                              )),
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                                child: TextButton(
                                    onPressed: () {
                                      Navigator.pushNamed(
                                        context,
                                        '/',
                                      );
                                    },
                                    child: Text(
                                      "Back to login",
                                      style: TextStyle(color: Colors.black),
                                    ))),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
