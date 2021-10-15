import 'package:flutter/material.dart';
import 'forget.dart';
import 'package:passwordfield/passwordfield.dart';

class Screen1 extends StatefulWidget {
  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset("assets/image/bg.png"),
                Container(
                  child: Column(
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 20),
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                'Sign-up',
                                style: TextStyle(
                                    fontFamily: 'Times New Roman',
                                    fontSize: 32,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 40),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                      height: 100,
                                      width: 100,
                                      child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            shape: new RoundedRectangleBorder(
                                              borderRadius:
                                                  new BorderRadius.circular(
                                                      1100),
                                            ),
                                          ),
                                          onPressed: null,
                                          child: Icon(Icons.camera_alt))),
                                  Container(
                                      alignment: Alignment.topLeft,
                                      margin: EdgeInsets.only(top: 20),
                                      child: Text(
                                        'Name',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17),
                                      )),
                                  TextFormField(
                                    keyboardType: TextInputType.emailAddress,
                                    textAlign: TextAlign.justify,
                                    decoration:
                                        InputDecoration(hintText: 'Your name'),
                                  ),
                                  Container(
                                      alignment: Alignment.topLeft,
                                      margin: EdgeInsets.only(top: 20),
                                      child: Text(
                                        'Email',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17),
                                      )),
                                  TextFormField(
                                    textAlign: TextAlign.justify,
                                    decoration: InputDecoration(
                                        hintText: 'Your email-id'),
                                  ),
                                  Container(
                                      alignment: Alignment.topLeft,
                                      margin: EdgeInsets.only(top: 20),
                                      child: Text(
                                        'Contact no.',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17),
                                      )),
                                  TextFormField(
                                    textAlign: TextAlign.justify,
                                    decoration: InputDecoration(
                                        hintText: 'Your contact number'),
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
                                                style: TextStyle(
                                                    color: Colors.black),
                                              ))),
                                      SizedBox(
                                        height: 200,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
