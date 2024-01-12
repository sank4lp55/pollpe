import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:pollpe/add_phone_number.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
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
                height: h * 0.6,
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
                        Container(
                          width: w * 0.12,
                          child: Image.asset("assets/namaste.png"),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        Column(
                          children: <Widget>[
                            Row(
                              children: [
                                RichText(
                                  text: const TextSpan(
                                    style: TextStyle(color: Colors.black),
                                    children: [
                                      TextSpan(
                                        text: 'Namaste!\n',
                                        style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                          //fontFamily:
                                          //GoogleFonts.poppins().fontFamily,
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'Chaliye Shuru krte hai ...',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 15,
                                            color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          //margin: EdgeInsets.symmetric(vertical: 30),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 0.7),
                          width: w * 0.75,
                          height: h * 0.06,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color(0xFFECEDEF),
                            ),
                            color: const Color(0xFFF6F7FE),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: const TextField(
                            decoration: InputDecoration(
                              //focusColor: Colors.,
                              prefixIcon: Icon(Icons.person),
                              hintText: "First Name",
                              hintStyle: TextStyle(
                                  color: Color(0xFF898494), fontSize: 18),

                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          //margin: EdgeInsets.symmetric(vertical: 30),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 0.7),
                          width: w * 0.75,
                          height: h * 0.06,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color(0xFFECEDEF),
                            ),
                            color: const Color(0xFFF6F7FE),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: const TextField(
                            decoration: InputDecoration(
                              //focusColor: Colors.,
                              prefixIcon: Icon(Icons.person),
                              hintText: "Last Name",
                              hintStyle: TextStyle(
                                  color: Color(0xFF898494), fontSize: 18),

                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          //margin: EdgeInsets.symmetric(vertical: 30),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 0.7),
                          width: w * 0.75,
                          height: h * 0.06,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color(0xFFECEDEF),
                            ),
                            color: const Color(0xFFF6F7FE),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: const TextField(
                            decoration: InputDecoration(
                              //focusColor: Colors.,
                              prefixIcon: Icon(Icons.person),
                              hintText: "Username",
                              hintStyle: TextStyle(
                                  color: Color(0xFF898494), fontSize: 18),

                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 40,
                            ),
                            Text("Suggested",
                                style: TextStyle(
                                    fontSize: 17, color: Colors.black)),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              //width: w * 0.75,
                              height: h * 0.04,
                              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color(0xFFA200ED),
                                ),
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xFFF6F7FE),
                              ),
                              child: Center(
                                child: Container(
                                  child: const Text(
                                    "amarsingh38",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 17,
                                        color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              //width: w * 0.75,
                              height: h * 0.04,
                              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color(0xFFA200ED),
                                ),
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xFFF6F7FE),
                              ),
                              child: Center(
                                child: Container(
                                  child: const Text(
                                    "amar348",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 17,
                                        color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              //width: w * 0.75,
                              height: h * 0.04,
                              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color(0xFFA200ED),
                                ),
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xFFF6F7FE),
                              ),
                              child: Center(
                                child: Container(
                                  child: const Text(
                                    "amar480",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 17,
                                        color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(AddPhoneNumber());
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
                          color: const Color(0xFFF6F7FE),
                        ),
                        child: Row(
                          children: [
                            Expanded(child: Container()),
                            Container(
                              child: const Text(
                                "Continue",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.grey),
                              ),
                            ),
                            Expanded(child: Container()),
                          ],
                        ),
                      ),
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
}
