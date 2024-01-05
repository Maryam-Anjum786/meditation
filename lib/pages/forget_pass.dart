import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meditation/pages/verify_mail.dart';
import 'package:meditation/widgets/button.dart';
import 'package:meditation/widgets/textfield.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

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
                  'Forgot Password',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: height * 0.03,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Inter-Regular'),
                ),
              )),
              const Center(
                  child: Text(
                'Enter the email address associated\nwith your account.',
                style: TextStyle(color: Color(0xffFFFFFF), fontSize: 16),
                textAlign: TextAlign.center,
              )),
              SizedBox(
                height: height * 0.04,
              ),
              Text(
                'Email',
                style: TextStyle(
                  color: const Color(0xffFFFFFF),
                  fontSize: height * 0.019,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Inter-Regular',
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 4,
              ),
              const Textfield(
                  hintText: 'demo@gmail.com',
                  prefixIco: Icons.email_outlined,
                  prefixIconColor: Colors.black,
                  hintTextColor: Colors.black),
              SizedBox(
                height: height * 0.04,
              ),
              Center(
                child: GestureDetector(
                  onTap: () {
                    Get.to(const VerifyMail());
                  },
                  child: Button(text: 'Recover Password'),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
