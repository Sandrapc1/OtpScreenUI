import 'package:flutter/material.dart';
import 'package:login_screen/core/colors.dart';
import 'package:login_screen/views/widget/otp_verify.dart';
import 'package:lottie/lottie.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key,});

  @override
  Widget build(BuildContext context) {
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
              'OTP Verify',
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
            SizedBox(height: height * 0.03),
            const Text('OTP Sent to',
                style: TextStyle(color: black, fontSize: 17)),
            const Text('+91 8421256455',
                style: TextStyle(
                    color: black, fontWeight: FontWeight.bold, fontSize: 18)),
            SizedBox(height: height * 0.02),
            buildPinInputWidget(),
            SizedBox(height: height * 0.02),
            TextButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Success',
                            style: TextStyle(color: green),
                          ),
                          SizedBox(width: width * 0.01),
                          const Icon(
                            Icons.verified_outlined,
                            color: green,
                          )
                        ],
                      ),
                      content: Padding(
                        padding: EdgeInsets.only(left: width * 0.06),
                        child: const Text('Your details have been submitted.'),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(button),
                              fixedSize: MaterialStateProperty.all(
                                  Size(width * 0.05, height * 0.01))),
                          child: const Text(
                            'OK',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(orange),
                fixedSize: MaterialStateProperty.all(
                    Size(width * 0.75, height * 0.05)),
              ),
              child: const Text(
                'Verify OTP',
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
