import 'package:get/get.dart';

class PhoneNumberController extends GetxController {
  var countryCode = '+91'.obs;
  var phoneNumber = ''.obs;

  void setCountryCode(String value) {
    countryCode.value = value;
  }

  void setPhoneNumber(String value) {
    phoneNumber.value = value;
  }
}
