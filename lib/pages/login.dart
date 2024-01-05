import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meditation/pages/forget_pass.dart';
import 'package:meditation/pages/sign%20up.dart';
import 'package:meditation/pages/welcome.dart';
import 'package:meditation/widgets/button.dart';
import 'package:meditation/widgets/textfield.dart';

class Login extends StatelessWidget {
  const Login({super.key});

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
                    'Login to continue',
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
                  height: height * 0.02,
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
                const Textfield(
                  hintText: '.......',
                  prefixIco: Icons.lock,
                  prefixIconColor: Colors.black,
                  hintTextColor: Colors.black,
                  suffixIcon: Icons.remove_red_eye_rounded,
                  suffixIconColor: Colors.black,
                ),
                SizedBox(
                  height: height * 0.018,
                ),
                Padding(
                  padding: EdgeInsets.only(left: width * 0.56),
                  child: GestureDetector(
                    onTap: () {
                      Get.to(const ForgetPassword());
                    },
                    child: const Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Inter-Regular',
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.042,
                ),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Get.to(const Welcome());
                    },
                    child: Button(text: 'Login'),
                  ),
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don’t have an account? ',
                      style: TextStyle(
                          color: const Color(0xffFFFFFF),
                          fontSize: height * 0.02,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Inter-Regular'),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(const SignUp());
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                            color: const Color(0xff153B62),
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Inter-Regular'),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.07,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: width * 0.35,
                      height: 1,
                      decoration: BoxDecoration(
                        color: const Color(0xffFFFFFF).withOpacity(0.5),
                      ),
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    const Text(
                      'Or',
                      style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Inter-Regular'),
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Container(
                      width: width * 0.35,
                      height: 1,
                      decoration: BoxDecoration(
                        color: const Color(0xffFFFFFF).withOpacity(0.5),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.055,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 56,
                      height: 56,
                      decoration: BoxDecoration(
                        color: const Color(0xffFFFFFF).withOpacity(0.5),
                        shape: BoxShape.circle,
                        image: const DecorationImage(
                            image: AssetImage('assets/images/apple.png')),
                      ),
                    ),
                    Container(
                      width: 56,
                      height: 56,
                      decoration: BoxDecoration(
                        color: const Color(0xffFFFFFF).withOpacity(0.5),
                        shape: BoxShape.circle,
                        image: const DecorationImage(
                            image: AssetImage('assets/images/google.png')),
                      ),
                    ),
                    Container(
                      width: 56,
                      height: 56,
                      decoration: BoxDecoration(
                          color: const Color(0xffFFFFFF).withOpacity(0.5),
                          shape: BoxShape.circle,
                          image: const DecorationImage(
                              image: AssetImage('assets/images/fb.png'))),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
