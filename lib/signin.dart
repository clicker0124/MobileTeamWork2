import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'signup.dart';

class Signin extends StatefulWidget {
  @override
  State<Signin> createState() => Signin01();
}

class Signin01 extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Container(
          child: Stack(
            children: [
              Image.asset("assets/image/background.png"),
              Column(
                children: [
                  SizedBox(
                    height: 280,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'Log-in',
                      style: TextStyle(
                          fontFamily: 'Times New Roman',
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 10,
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
                                  fontFamily: 'RobotoMono',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            )),
                        Container(
                          height: 50,
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            textAlign: TextAlign.justify,
                            decoration:
                                InputDecoration(hintText: 'Your email id'),
                          ),
                        ),
                        Container(
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.only(top: 20),
                            child: Text(
                              'Password',
                              style: TextStyle(
                                  fontFamily: 'RobotoMono',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            )),
                        Container(
                          height: 50,
                          child: TextField(
                            textAlign: TextAlign.justify,
                            decoration: InputDecoration(hintText: 'Password'),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 0),
                            child: TextButton(
                              onPressed: () {
                                Navigator.pushNamed(
                                  context,
                                  '/Forget_Password',
                                );
                              },
                              child: const Text(
                                'Forget password?',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ),
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
                                      "Login",
                                      style: TextStyle(
                                          fontFamily: "RobotoMono",
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
                              child: Text(
                                "Don't have an account ?",
                              ),
                            ),
                            Expanded(
                                child: TextButton(
                                    onPressed: () {
                                      Navigator.pushNamed(
                                        context,
                                        '/Signup_Screen',
                                      );
                                    },
                                    child: Text(
                                      "Sign - up",
                                      style: TextStyle(color: Colors.black),
                                    ))),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const <Widget>[
                            Text("~~~~~~~~~~~Or login with~~~~~~~~~~~"),
                          ],
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const <Widget>[
                              IconButton(
                                  icon: const Icon(
                                    EvaIcons.emailOutline,
                                    size: 50,
                                  ),
                                  tooltip: 'G-Mail',
                                  onPressed: null),
                              IconButton(
                                  icon: const Icon(
                                    EvaIcons.facebook,
                                    size: 50,
                                  ),
                                  tooltip: 'Facebook',
                                  onPressed: null),
                            ],
                          ),
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
