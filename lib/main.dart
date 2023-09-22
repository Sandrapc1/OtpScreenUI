import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_screen/controller/phonenumber_controller.dart';
import 'package:login_screen/views/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Login Screen',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        
      ),
      debugShowCheckedModeBanner: false,
      home: const LoginScreen(),
      initialBinding: BindingsBuilder(() {
        Get.put(PhoneNumberController());
      }),
    );
  }
}

