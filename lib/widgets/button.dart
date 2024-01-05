import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  Button({super.key, required this.text});
  String text;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    return Container(
      width: 343,
      height: 47,
      decoration: const BoxDecoration(
        color: Color(0xff153B62),
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              color: const Color(0xffFFFFFF),
              fontSize: height * 0.02,
              fontWeight: FontWeight.w700,
              fontFamily: 'Inter-Regular'),
        ),
      ),
    );
  }
}
