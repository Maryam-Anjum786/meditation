import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meditation/pages/login.dart';
import 'package:meditation/pages/welcome.dart';
import 'package:meditation/widgets/button.dart';
import 'package:meditation/widgets/textfield.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

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
                image: AssetImage('assets/images/login.png'),
                fit: BoxFit.cover),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.08),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: height * 0.03),
                  child: const Center(
                    child: Image(
                      image: AssetImage('assets/images/image.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    'Welcome Back!',
                    style: TextStyle(
                      color: const Color(0xffFFFFFF),
                      fontSize: height * 0.034,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Inter-Regular',
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    'Sign up to continue',
                    style: TextStyle(
                        color: const Color(0xffFFFFFF),
                        fontSize: height * 0.02,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Inter-Regular'),
                  ),
                ),
                SizedBox(
                  height: height * 0.031,
                ),
                Text(
                  'Username',
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
                    hintText: 'Demo',
                    prefixIco: Icons.person,
                    prefixIconColor: Colors.black,
                    hintTextColor: Colors.black),
                SizedBox(
                  height: height * 0.02,
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
                  height: 3,
                ),
                const Textfield(
                    hintText: 'demo@gmail.com',
                    prefixIco: Icons.email_outlined,
                    prefixIconColor: Colors.black,
                    hintTextColor: Colors.black),
                SizedBox(
                  height: height * 0.018,
                ),
                Text(
                  'Password',
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
                  hintText: '.......',
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
                      Get.to(const Welcome());
                    },
                    child: Button(text: 'Sign Up'),
                  ),
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      ' Already have an account? ',
                      style: TextStyle(
                          color: const Color(0xffFFFFFF),
                          fontSize: height * 0.02,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Inter-Regular'),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(const Login());
                      },
                      child: Text(
                        'Log In',
                        style: TextStyle(
                            color: const Color(0xff153B62),
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Inter-Regular'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
