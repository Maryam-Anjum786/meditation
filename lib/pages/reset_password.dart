import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meditation/pages/login.dart';
import 'package:meditation/widgets/button.dart';
import 'package:meditation/widgets/textfield.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        width: width,
        height: height,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/login.png'), fit: BoxFit.cover),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: width * 0.08, vertical: height * 0.07),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Icon(
                      Icons.arrow_back_ios_rounded,
                      color: const Color(0xffFFFFFF),
                      size: height * 0.024,
                    ),
                  ),
                ],
              ),
              Center(
                  child: Padding(
                padding: EdgeInsets.only(top: height * 0.058),
                child: Text(
                  'Reset your password',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: height * 0.03,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Inter-Regular'),
                ),
              )),
              const Center(
                  child: Text(
                'Verification code sent to : demo@gmail.com',
                style: TextStyle(color: Color(0xffFFFFFF), fontSize: 16),
                textAlign: TextAlign.center,
              )),
              SizedBox(
                height: height * 0.04,
              ),
              Text(
                'Old password',
                style: TextStyle(
                  color: const Color(0xffFFFFFF),
                  fontSize: height * 0.019,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Inter-Regular',
                ),
                textAlign: TextAlign.center,
              ),
              const Textfield(
                hintText: '.......',
                prefixIco: Icons.lock,
                prefixIconColor: Colors.black,
                hintTextColor: Colors.black,
                suffixIcon: Icons.remove_red_eye_rounded,
                suffixIconColor: Colors.black,
              ),
              SizedBox(
                height: height * 0.025,
              ),
              Text(
                'New password',
                style: TextStyle(
                  color: const Color(0xffFFFFFF),
                  fontSize: height * 0.019,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Inter-Regular',
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 3,
              ),
              const Textfield(
                hintText: '......',
                prefixIco: Icons.lock,
                prefixIconColor: Colors.black,
                hintTextColor: Colors.black,
                suffixIcon: Icons.remove_red_eye_rounded,
                suffixIconColor: Colors.black,
              ),
              SizedBox(
                height: height * 0.063,
              ),
              Center(
                child: GestureDetector(
                  onTap: () {
                    Get.to(const Login());
                  },
                  child: Button(text: 'Continue'),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
