import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:shop_new/presentation/themes/app_colors.dart';

import 'auth/loginpage.dart';

class Splashscreen extends StatefulWidget {
  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    _navigatepage();
  }

  _navigatepage() async {
    await Future.delayed(
      Duration(seconds: 3),
      () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => LoginPage(),
            ));
      },
    );
  }

  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Color.fromARGB(255, 201, 25, 69)),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 300,
                width: 250,
                child: Icon(
                  Icons.pedal_bike,
                  color: AppColors.white,
                ),
                // child: Image.asset(
                //   "assets/testimages/cartimg.png",
                //   fit: BoxFit.cover,
                // ),
              ),
              Text("E-Commerce",
                  style: GoogleFonts.handlee(
                    textStyle: TextStyle(fontSize: 40, color: Colors.white),
                  ))
            ],
          ),
        ),
      ),
    ));
  }
}
