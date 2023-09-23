import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_screen/controller/phonenumber_controller.dart';
import 'package:login_screen/views/widget/otpscreen_tile.dart';

class OtpScreen extends StatelessWidget {
  OtpScreen({
    super.key,
  });
  final phoneNumberController = Get.put(PhoneNumberController());
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: height * 0.1),
            child: OtpScreen_Tile(
                height: height,
                width: width,
                phoneNumberController: phoneNumberController),
          ),
        ),
      ),
    );
  }
}
