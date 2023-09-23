import 'package:get/get.dart';
import '../views/otp_screen.dart';

class PhoneNumberController extends GetxController {
   RxString phoneNumber = ''.obs;

  void setPhoneNumber(String number) {
    phoneNumber.value = number;
  }

  void navigateToOtpScreen() {
    // Navigate to the OTP screen
    Get.to( OtpScreen());
  }
}
