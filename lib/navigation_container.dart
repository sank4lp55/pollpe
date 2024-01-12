import 'dart:async';
import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pollpe/utils/constants.dart';
import 'package:pollpe/homepage.dart';
import 'package:pollpe/profile.dart';

class NavigationContainer extends StatefulWidget {
  const NavigationContainer({super.key});

  @override
  State<NavigationContainer> createState() => _NavigationContainerState();
}

class _NavigationContainerState extends State<NavigationContainer> {
  var currentIndex = 0;
  List screen = [];
  // final storage = FlutterSecureStorage();

  @override
  void initState() {
    super.initState();
    // List screen;

    screen = [const Homepage(), const Profile(), const Profile()];
    // _determinePosition().then((value) => initializeService());
  }
  // List screen = if()[const HomePage(), const Empty(), const Profile()];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        // backgroundColor: (currentIndex == 0 || currentIndex == 1)
        //     ? Colors.grey.shade300
        //     : const Color(0xff2B3460),
        // backgroundColor: Colors.transparent,
        body: screen[currentIndex],
        extendBody: true,
        bottomNavigationBar: Container(
          padding: EdgeInsets.all((MediaQuery.of(context).size.width > 720
                  ? MediaQuery.of(context).size.width / 3
                  : MediaQuery.of(context).size.width) *
              0.03),
          child: ClipRRect(
            borderRadius: const BorderRadius.vertical(
                // top: Radius.circular(40),
                ),
            child: Container(
              alignment: Alignment.center,
              // margin: const EdgeInsets.all(18),
              // padding: const EdgeInsets.symmetric(horizontal: 10),
              height: size.width * .155,
              decoration: BoxDecoration(
                color: Colors.white,
                // boxShadow: [
                //   BoxShadow(
                //     color: Colors.grey.withOpacity(.5),
                //     blurRadius: 0,
                //     offset: const Offset(0, 1),
                //     spreadRadius: 1,
                //   ),
                // ],
                borderRadius: BorderRadius.circular(50),
              ),
              child: ListView.separated(
                separatorBuilder: (context, index) => const SizedBox(
                  width: 35,
                ),
                shrinkWrap: true,
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: size.width * .024),
                itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    setState(
                      () {
                        if (index != currentIndex) {
                          //Get.deleteAll(); //Removes Controller every time we navigate to keep the data in controller up to date with backend .
                        }

                        currentIndex = index;
                      },
                    );
                  },
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 1500),
                        curve: Curves.fastLinearToSlowEaseIn,
                        margin: EdgeInsets.only(
                          bottom: index == currentIndex ? 0 : size.width * .029,
                          right: size.width * .0422,
                          left: size.width * .0422,
                        ),
                        width: size.width * .128,
                        height: index == currentIndex ? size.width * .014 : 0,
                        decoration: const BoxDecoration(
                          color: purple,
                          borderRadius: BorderRadius.vertical(
                            bottom: Radius.circular(10),
                          ),
                        ),
                      ),
                      Icon(
                        listOfIcons[index],
                        size: size.width * .076,
                        color: index == currentIndex ? purple : Colors.black38,
                      ),
                      SizedBox(height: size.width * .03),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  List<IconData> listOfIcons = [
    Icons.home_rounded,
    Icons.location_on_rounded,
    // Icons.assured_workload_outlined,
    Icons.person_rounded,
  ];
}
