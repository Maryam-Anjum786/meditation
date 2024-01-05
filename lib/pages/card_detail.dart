import 'package:flutter/material.dart';

class CardDetail extends StatelessWidget {
  const CardDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: width,
            height: height * 0.37,
            decoration: const BoxDecoration(
              color: Color(0xff688EC0),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(0),
                topRight: Radius.circular(0),
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: height * 0.07,
                horizontal: width * 0.04,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: height * 0.01),
                    child: const Icon(
                      Icons.arrow_back_ios_rounded,
                      size: 20,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: width * 0.24),
                  Text(
                    'Card detail',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: height * 0.03,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Inter-Regular',
                    ),
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: Container(
              width: 368,
              height: height*0.7,
              decoration: BoxDecoration(
                color: const Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(15.526),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(75, 75, 75, 0.15),
                    blurRadius: 5,
                    spreadRadius: 3,
                    blurStyle: BlurStyle.outer,
                    offset: Offset(3, 3),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        right: width * 0.06,
                        left: width * 0.06,
                        top: height * 0.045,
                        bottom: height * 0.01),
                    child: Text('Name on card',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Inter-Regular')),
                  ),
                  Center(
                    child: Container(
                      width: 340,
                      height: 54,
                      decoration: const BoxDecoration(
                        color: Colors.transparent,
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(0, 3, 4, 0.14),
                            blurRadius: 2,
                            offset: Offset(0.2, 0.2),
                            blurStyle: BlurStyle.outer
                          ),
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        enabled: true,
                        showCursor: true,
                        decoration: InputDecoration(
                          isDense: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Color(0xffD4D4D4)),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Color(0xffD4D4D4)),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 16.0,
                            horizontal: 30.0,
                          ),
                          filled: true,
                          fillColor: const Color(0xffFFFFFF),
                          hintText: 'usama khan',
                          hintStyle: TextStyle(
                            fontSize: height * 0.018,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Inter-Regular',
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        right: width * 0.06,
                        left: width * 0.06,
                        top: height * 0.028,
                        bottom: height * 0.01),
                    child: Text(
                      'Card number',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: height * 0.02,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Inter-Regular'),
                    ),
                  ),
                  Center(
                    child: Container(
                      width: 340,
                      height: 54,
                      decoration: const BoxDecoration(
                        color: Colors.transparent,
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(0, 3, 4, 0.14),
                            blurRadius: 2,
                            offset: Offset(0.2, 0.2),
                            blurStyle: BlurStyle.outer
                          ),
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        enabled: true,
                        showCursor: true,
                        decoration: InputDecoration(
                          isDense: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Color(0xffD4D4D4)),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Color(0xffD4D4D4)),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 16.0,
                            horizontal: 30.0,
                          ),
                          filled: true,
                          fillColor: const Color(0xffFFFFFF),
                          hintText: '123 456 789',
                          hintStyle: TextStyle(
                            fontSize: height * 0.018,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Inter-Regular',
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        right: width * 0.06,
                        left: width * 0.06,
                        top: height * 0.028,
                        bottom: height * 0.01),
                    child: Text(
                      'Card expiry',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: height * 0.02,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Inter-Regular'),
                    ),
                  ),
                  Center(
                    child: Container(
                      width: 340,
                      height: 54,
                      decoration: const BoxDecoration(
                        color: Colors.transparent,
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(0, 3, 4, 0.14),
                            blurRadius: 2,
                            blurStyle: BlurStyle.outer,
                            offset: Offset(0.2, 0.2),
                          ),
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        enabled: true,
                        showCursor: true,
                        decoration: InputDecoration(
                          isDense: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Color(0xffD4D4D4)),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Color(0xffD4D4D4)),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 16.0,
                            horizontal: 30.0,
                          ),
                          filled: true,
                          fillColor: const Color(0xffFFFFFF),
                          hintText: '02/25',
                          hintStyle: TextStyle(
                            fontSize: height * 0.018,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Inter-Regular',
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        right: width * 0.06,
                        left: width * 0.06,
                        top: height * 0.028,
                        bottom: height * 0.01),
                    child: Text(
                      'CVV',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: height * 0.02,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Inter-Regular'),
                    ),
                  ),
                  Center(
                    child: Container(
                      width: 340,
                      height: 54,
                      decoration: const BoxDecoration(
                        color: Colors.transparent,
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(0, 3, 4, 0.14),
                            blurRadius: 2,
                            blurStyle: BlurStyle.outer,
                            offset: Offset(0.2, 0.2),
                          ),
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        enabled: true,
                        showCursor: true,
                        decoration: InputDecoration(
                          isDense: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Color(0xffD4D4D4)),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Color(0xffD4D4D4)),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 16.0,
                            horizontal: 30.0,
                          ),
                          filled: true,
                          fillColor: const Color(0xffFFFFFF),
                          hintText: '..........',
                          hintStyle: TextStyle(
                            fontSize: height * 0.018,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Inter-Regular',
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height*0.05,
                  ),
                  Center(child: Container(
                    width: 340,
                    height: 47,
                    decoration: const BoxDecoration(
                      color: Color(0xff153B62),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: Center(
                      child: Text('Pay now',
                        style: TextStyle(
                            color: const Color(0xffFFFFFF),
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Inter-Regular'),
                      ),
                    ),
                  )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
