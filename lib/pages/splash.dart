import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meditation/pages/login.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    Future.delayed(const Duration(seconds: 3), () {
      Get.off(const Login());
    });
    return Scaffold(
      body: Container(
        width: width,
        height: height,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/splash.png'), fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            Padding(
              padding:
                  EdgeInsets.only(top: height * 0.042, bottom: height * 0.01),
              child: const Image(image: AssetImage('assets/images/image.png')),
            ),
            Text(
              'WELCOME TO',
              style: TextStyle(
                  color: const Color(0xff153B62),
                  fontSize: height * 0.025,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Inter-Regular.ttf'),
              textAlign: TextAlign.center,
            ),
            Text(
              'MEDITATION',
              style: TextStyle(
                  color: const Color(0xff153B62),
                  fontSize: height * 0.045,
                  fontWeight: FontWeight.w800,
                  fontFamily: 'Inter-Regular.ttf'),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
