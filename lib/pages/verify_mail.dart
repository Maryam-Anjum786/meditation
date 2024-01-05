import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meditation/pages/reset_password.dart';
import 'package:meditation/widgets/button.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerifyMail extends StatelessWidget {
  const VerifyMail({super.key});

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
                  'Verify email address',
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
                height: height * 0.052,
              ),
              PinCodeTextField(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                appContext: context,
                length: 4,
                obscureText: false,
                cursorColor: Colors.black,
                animationType: AnimationType.fade,
                animationDuration: const Duration(milliseconds: 300),
                textStyle: const TextStyle(fontSize: 20, height: 1.6),
                enableActiveFill: true,
                keyboardType: TextInputType.number,
                boxShadows: const [
                  BoxShadow(
                    offset: Offset(0, 1),
                    color: Colors.black12,
                    blurRadius: 10,
                  )
                ],
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.circle,
                  fieldHeight: 56,
                  fieldWidth: 56,
                  activeColor: const Color(0xffFFFFFF),
                  activeFillColor: const Color(0xffFFFFFF),
                  activeBorderWidth: 0.5,
                  inactiveColor: const Color(0xffFFFFFF).withOpacity(0.5),
                  inactiveFillColor: const Color(0xffFFFFFF).withOpacity(0.5),
                  inactiveBorderWidth: 0.5,
                  selectedColor: const Color(0xffFFFFFF),
                  selectedFillColor: const Color(0xffFFFFFF),
                  borderRadius: const BorderRadius.all(Radius.circular(50)),
                ),
              ),
              SizedBox(
                height: height * 0.04,
              ),
              Center(
                child: GestureDetector(
                  onTap: () {
                    Get.to(const ResetPassword());
                  },
                  child: Button(text: 'Recover Password'),
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Center(
                  child: Text(
                'Resend Confirmation Code',
                style: TextStyle(
                    color: const Color(0xffFFFFFF),
                    fontSize: height * 0.018,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Inter-Regular'),
              ))
            ],
          ),
        ),
      ),
    ));
  }
}
