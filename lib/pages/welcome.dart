import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    return Scaffold(
      backgroundColor: const Color(0xff153B62),
      body: Container(
        width: width,
        height: height,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Welcome to Meditation!',
              style: TextStyle(
                color: Color(0xffFFFFFF),
                fontSize: 24,
                fontWeight: FontWeight.w700,
                fontFamily: 'Inter-Regular',
              ),
              textAlign: TextAlign.center,
            ),
            Image(
              image: AssetImage('assets/images/woman.png'),
              fit: BoxFit.cover,
            ),
            Text(
              'Need a small survey about\nyourself to understand you\nbetter',
              style: TextStyle(
                color: Color(0xffFFFFFF),
                fontSize: 20,
                fontWeight: FontWeight.w700,
                fontFamily: 'Inter-Regular',
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
