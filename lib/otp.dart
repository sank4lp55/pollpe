import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:pollpe/constants.dart';
import 'package:pollpe/password.dart';

class Otp extends StatefulWidget {
  const Otp({super.key});

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  bool isEnabled = false;

  bool textField1Filled = false;
  bool textField2Filled = false;
  bool textField3Filled = false;
  bool textField4Filled = false;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double h = size.height;
    double w = size.width;
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          Container(
            width: w,
            height: h,
            color: const Color(0xFFF7E9FF),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: w * 0.7,
                  height: w,
                  child: SvgPicture.asset("assets/welcome.svg"),
                )
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: w,
                height: h / 2,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.0, 1.0), //(x,y)
                      blurRadius: 6.0,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Container(
                        //   width: w * 0.12,
                        //   child: Image.asset("assets/man.png"),
                        // ),
                        // const SizedBox(
                        //   width: 30,
                        // ),
                        Column(
                          children: <Widget>[
                            Row(
                              children: [
                                RichText(
                                  text: const TextSpan(
                                    style: TextStyle(color: Colors.black),
                                    children: [
                                      // TextSpan(
                                      //   text: 'Hi, Amar Singh\n',
                                      //   style: TextStyle(
                                      //     fontSize: 24,
                                      //     fontWeight: FontWeight.bold,
                                      //     //fontFamily:
                                      //     //GoogleFonts.poppins().fontFamily,
                                      //   ),
                                      // ),
                                      TextSpan(
                                        text: 'We have sent the OTP to',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 17,
                                            color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              '+91-34564-23423',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                //fontFamily:
                                //GoogleFonts.poppins().fontFamily,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    RichText(
                      text: const TextSpan(
                        style: TextStyle(color: Colors.black),
                        children: [
                          TextSpan(
                            text: 'Did\'nt Recieve OTP? ',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              //fontFamily:
                              //GoogleFonts.poppins().fontFamily,
                            ),
                          ),
                          TextSpan(
                            text: 'Resend OTP',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: purple,
                              //fontFamily:
                              //GoogleFonts.poppins().fontFamily,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(w * 0.02),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(w * 0.03),
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  _textFieldOTP(
                                      first: true, last: false, index: 1),
                                  _textFieldOTP(
                                      first: false, last: false, index: 2),
                                  _textFieldOTP(
                                      first: false, last: false, index: 3),
                                  _textFieldOTP(
                                      first: false, last: true, index: 4),
                                ],
                              ),
                              SizedBox(
                                height: w * 0.06,
                              ),
                              // SizedBox(
                              //   width: double.infinity,
                              //   child: MyButton(
                              //     onTap: () {
                              //       Get.to(verifyaadhar());
                              //     },
                              //     h: height * 0.065,
                              //     w: width * 0.2,
                              //     text: "Verify OTP",
                              //   ),
                              // )
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(Password());
                          },
                          child: Container(
                            width: w * 0.75,
                            height: h * 0.06,
                            //padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              // border: Border.all(
                              //   color: Color(0xFFECEDEF),
                              // ),
                              borderRadius: BorderRadius.circular(16),
                              color: isEnabled ? purple : Color(0xFFF6F7FE),
                            ),
                            child: Row(
                              children: [
                                Expanded(child: Container()),
                                Container(
                                  child: Text(
                                    "VERIFY",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color:
                                            isEnabled ? Colors.white : purple),
                                  ),
                                ),
                                Expanded(child: Container()),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Column(
                      children: [
                        Text(
                          "You may recieve SMS notifications from us for",
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text("security and login purposes.",
                            style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    ));
  }

  Widget _textFieldOTP({bool? first, last, index}) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Container(
      height: height * 0.09,
      //width: height * 0.068,
      child: AspectRatio(
        aspectRatio: 0.8,
        child: TextField(
          autofocus: true,
          onChanged: (value) {
            if (value.length == 1 && last == false) {
              FocusScope.of(context).nextFocus();
            }
            if (value.length == 0 && first == false) {
              FocusScope.of(context).previousFocus();
            }
            if (index == 1) {
              if (value != "") {
                textField1Filled = true;
                if (textField1Filled &&
                    textField2Filled &&
                    textField3Filled &&
                    textField4Filled) {
                  setState(() {
                    isEnabled = true;
                  });
                }
              } else {
                textField1Filled = false;
                setState(() {
                  isEnabled = false;
                });
              }
            } else if (index == 2) {
              if (value != "") {
                textField2Filled = true;
                if (textField1Filled &&
                    textField2Filled &&
                    textField3Filled &&
                    textField4Filled) {
                  setState(() {
                    isEnabled = true;
                  });
                }
              } else {
                textField2Filled = false;
                setState(() {
                  isEnabled = false;
                });
              }
            } else if (index == 3) {
              if (value != "") {
                textField3Filled = true;
                if (textField1Filled &&
                    textField2Filled &&
                    textField3Filled &&
                    textField4Filled) {
                  setState(() {
                    isEnabled = true;
                  });
                }
              } else {
                textField3Filled = false;
                setState(() {
                  isEnabled = false;
                });
              }
            } else {
              if (value != "") {
                textField4Filled = true;
                if (textField1Filled &&
                    textField2Filled &&
                    textField3Filled &&
                    textField4Filled) {
                  setState(() {
                    isEnabled = true;
                  });
                }
              } else {
                textField4Filled = false;
                setState(() {
                  isEnabled = false;
                });
              }
            }
          },
          showCursor: false,
          readOnly: false,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            counter: Offstage(),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: Colors.black12),
                borderRadius: BorderRadius.circular(12)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: purple),
                borderRadius: BorderRadius.circular(12)),
          ),
        ),
      ),
    );
  }
}
