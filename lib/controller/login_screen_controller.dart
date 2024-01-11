import 'package:get/state_manager.dart';

class LoginScreenController extends GetxController {
  RxBool obscureText = true.obs;

  void changeObscure() {
    obscureText.value = !obscureText.value;
  }
}
