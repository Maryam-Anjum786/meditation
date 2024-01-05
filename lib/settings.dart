import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    return Scaffold(
      body: SizedBox(
        height: height,
        width: width,
        child: Stack(
          children: [
            Container(
              width: width,
              height: height * 0.4,
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
                  horizontal: width * 0.06,
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
                    SizedBox(width: width * 0.28),
                    Text(
                      'Setting',
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
            Positioned(
              left: width * 0.035,
              right: width * 0.035,
              top: height * 0.17,
              child: Container(
                width: width,
                height: 525,
                decoration: const BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.all(Radius.circular(15.526)),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x264B4B4B),
                      blurRadius: 15.53,
                      offset: Offset(0, 1.94),
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: width * 0.051,
                          right: width * 0.051,
                          top: height * 0.045,
                          bottom: height * 0.025),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Change password',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Inter-Regular',
                                height: 0),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: height * 0.023,
                            color: Colors.black,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: width * 0.051, vertical: height * 0.025),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Language',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Inter-Regular',
                                height: 0),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: height * 0.023,
                            color: Colors.black,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: width * 0.051, vertical: height * 0.025),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Appearance',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Inter-Regular',
                                height: 0),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: height * 0.023,
                            color: Colors.black,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: width * 0.051, vertical: height * 0.025),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            'Rate app',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Inter-Regular',
                                height: 0),
                          ),
                          Spacer(),
                          const Icon(Icons.star_border_rounded,color: Color.fromRGBO(241,91, 74, 1)),
                          const Icon(Icons.star_border_rounded,color: Color.fromRGBO(241,91, 74, 1)),
                          const Icon(Icons.star_border_rounded,color: Color.fromRGBO(241,91, 74, 1)),
                          const Icon(Icons.star_border_rounded,color: Color.fromRGBO(241,91, 74, 1)),
                          const Icon(Icons.star_border_rounded,color: Color.fromRGBO(241,91, 74, 1)),
                          const SizedBox(width: 3.2,),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: height * 0.023,
                            color: Colors.black,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: width * 0.051, vertical: height * 0.025),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Share this app',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Inter-Regular',
                                height: 0),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: height * 0.023,
                            color: Colors.black,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    const Divider(
                      indent: 0,
                      endIndent: 0,
                      color: Color(0xffCACACA),
                      height: 0,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: width * 0.051,
                          right: width * 0.051,
                          top: height * 0.04,
                          bottom: height * 0.03),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Delete account',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Inter-Regular',
                                height: 0),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: height * 0.023,
                            color: Colors.black,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: width * 0.051,
                          right: width * 0.051,
                          top: height * 0.01,
                          bottom: height * 0.045),
                      child: const Row(
                        children: [
                          Icon(
                            Icons.logout,
                            color: Color(0xffF15B4A),
                          ),
                          SizedBox(
                            width: 16.25,
                          ),
                          Text(
                            'Log out',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Inter-Regular',
                                height: 0),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
