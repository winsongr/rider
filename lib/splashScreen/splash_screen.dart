import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rider/auth/auth_screen.dart';
import 'package:rider/global/global.dart';

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({Key? key}) : super(key: key);

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  startTimer() {
    Timer(const Duration(seconds: 1), () async {
      if (firebaseAuth.currentUser !=null) {
         //Navigator.push(
          //context, MaterialPageRoute(builder: (c) => HomeScreen()));
      }
      else{
         Navigator.push(
          context, MaterialPageRoute(builder: (c) => const AuthScreen()));
      }
     
    });
  }

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();

    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.white,
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("images/logo.png"),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.all(18.0),
              child: Text(
                "Deliver & Earn",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 40,
                  fontFamily: "signatra",
                  letterSpacing: 3,
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}
