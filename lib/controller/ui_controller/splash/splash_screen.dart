import 'package:doctor_appointment_project/view/screen/splash/splash_started_screen.dart';
import 'package:get/get.dart';

class SplashScreenController extends GetxController {


  Future nextPage() async {
    await Future.delayed(const Duration(seconds: 4));
    Get.to( const SplashStartedScreen());
  }

  @override
  void onInit() {
    nextPage();
    super.onInit();
  }
}
