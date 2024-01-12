import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:pollpe/details.dart';
import 'package:pollpe/signin.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  User? _user;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _auth.authStateChanges().listen((event) {
      setState(() {
        _user = event;
      });
    });
  }

  Future<void> _handleGoogleSignIn() async {
    try {
      GoogleAuthProvider _googleAuthProvider = GoogleAuthProvider();
      _auth.signInWithProvider(_googleAuthProvider);
      Get.to(Details());
    } catch (error) {}
  }

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
                        Container(
                          width: w * 0.12,
                          child: Image.asset("assets/smartphone.png"),
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
                                        text: 'Welcome To ',
                                        style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                          //fontFamily:
                                          //GoogleFonts.poppins().fontFamily,
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'Poll',
                                        style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFFA200ED),
                                          // fontFamily:
                                          //     GoogleFonts.poppins().fontFamily,
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'Pe\n',
                                        style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFFFF9309),
                                          // fontFamily:
                                          //     GoogleFonts.poppins().fontFamily,
                                        ),
                                      ),
                                      TextSpan(
                                        text: '#EarnKarBefikar',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
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
                    InkWell(
                      onTap: () async {
                        await _handleGoogleSignIn();

                        // Get.to(Details());
                      },
                      child: Container(
                        width: w * 0.75,
                        height: h * 0.06,
                        //padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xFFECEDEF),
                          ),
                          borderRadius: BorderRadius.circular(16),
                          color: const Color(0xFFF6F7FE),
                        ),
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 20,
                            ),
                            Container(
                              width: h * 0.03,
                              height: h * 0.03,
                              child: Image.asset(
                                "assets/google.png",
                                //height: 40,
                              ),
                            ),
                            Expanded(child: Container()),
                            Container(
                              child: const Text(
                                "Sign up with google",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ),
                            Expanded(child: Container()),
                          ],
                        ),
                      ),
                    ),
                    const Column(
                      children: [
                        Text(
                          "By signing up, ypu agree to the Terms of Services",
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text("and Privacy Policy, including Cooking Use.",
                            style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                    const Row(children: <Widget>[
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(child: Divider()),
                      SizedBox(
                        width: 20,
                      ),
                      Text("OR"),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(child: Divider()),
                      SizedBox(
                        width: 20,
                      ),
                    ]),
                    const Text("Already Have an account?",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    InkWell(
                      onTap: () {
                        Get.to(SignIn());
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
                                "Sign in",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Color(0xFFA200ED)),
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
