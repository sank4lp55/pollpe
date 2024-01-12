import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pollpe/onboarding_folder/add_phone_number.dart';
import 'package:pollpe/onboarding_folder/details.dart';
import 'package:pollpe/signin_folder/find_account.dart';
import 'package:pollpe/firebase_options.dart';
import 'package:pollpe/onboarding_folder/otp.dart';
import 'package:pollpe/onboarding_folder/password.dart';
import 'package:pollpe/signin_folder/signin.dart';
import 'package:pollpe/welcome.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Poll Pe Onboarding',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Welcome(),
    );
  }
}
