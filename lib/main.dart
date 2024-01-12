import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pollpe/add_phone_number.dart';
import 'package:pollpe/details.dart';
import 'package:pollpe/find_account.dart';
import 'package:pollpe/otp.dart';
import 'package:pollpe/password.dart';
import 'package:pollpe/signin.dart';
import 'package:pollpe/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Password(),
    );
  }
}
