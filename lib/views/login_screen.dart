import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_screen/core/colors.dart';
import 'package:login_screen/views/otp_screen.dart';
import 'package:login_screen/views/widget/loginscreen_tile.dart';
import 'package:lottie/lottie.dart';
import '../controller/phonenumber_controller.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key,});

  @override
  Widget build(BuildContext context) {
    final TextEditingController phoneNumberController = TextEditingController();
    final PhoneNumberController phoneNumberControllerInstance = Get.find();
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;

    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Log in',
              style: TextStyle(
                  color: black, fontWeight: FontWeight.bold, fontSize: 27),
            ),
            SizedBox(height: height * 0.04),
            Center(
              child: Lottie.asset(
                'assets/lottie/animation_lmuir2kx.json',
                height: height * 0.3,
                width: width * 0.62,
              ),
            ),
            SizedBox(height: height * 0.04),
            LoginScreen_Tile(
                height: height,
                width: width,
                phoneNumberController: phoneNumberController,
                phoneNumberControllerInstance: phoneNumberControllerInstance),
            SizedBox(height: height * 0.02),
            TextButton(
              onPressed: () {
                Get.to(const OtpScreen());
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(orange),
                fixedSize: MaterialStateProperty.all(
                    Size(width * 0.75, height * 0.05)),
              ),
              child: const Text(
                'Get OTP',
                style: TextStyle(
                  color: white,
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(height: height * 0.03),
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'By Signing up, you agree with Terms',
                  style: TextStyle(color: grey),
                ),
                Text(
                  'and Conditions.',
                  style: TextStyle(color: grey),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
