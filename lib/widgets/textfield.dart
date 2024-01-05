import 'package:flutter/material.dart';

class Textfield extends StatelessWidget {
  const Textfield({
    super.key,
    required this.hintText,
    required this.prefixIco,
    required this.prefixIconColor,
    this.suffixIcon,
    this.suffixIconColor,
    required this.hintTextColor,
    this.keyboardType = TextInputType.text,
  });
  final String hintText;
  final IconData prefixIco;
  final Color prefixIconColor;
  final IconData? suffixIcon;
  final Color? suffixIconColor;
  final Color hintTextColor;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    return Container(
      width: 343,
      height: 47,
      child: TextFormField(
        keyboardType: TextInputType.text,
        enabled: true,
        showCursor: true,
        decoration: InputDecoration(
          isDense: true,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(5),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(5),
          ),
          prefixIcon: Icon(prefixIco),
          prefixIconColor: prefixIconColor,
          suffixIcon: Icon(suffixIcon),
          suffixIconColor: suffixIconColor,
          filled: true,
          fillColor: const Color(0xffFFFFFF).withOpacity(0.5),
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: height * 0.016,
            color: hintTextColor,
          ),
        ),
      ),
    );
  }
}
