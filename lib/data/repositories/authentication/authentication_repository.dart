import 'package:e_commerce/features/authentication/screens/login/login.dart';
import 'package:e_commerce/features/authentication/screens/onboarding/onboarding.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  /// Variables
  final deviceStorage = GetStorage();

  /// Called from main.dart on app launch
  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect();
    super.onReady();
  }

  /// Function to show relevant screen
  screenRedirect() async {
    // Local Storage
    deviceStorage.writeIfNull("isFirstTime", true);
    deviceStorage.read("isFirstTime") != true
        ? Get.offAll(() => const LoginScreen())
        : Get.offAll(() =>  OnBoardingScreen());
  }

/* -------------- Email & Password sign-in -------------- */

  /// [EmailAuthentication] - SignIn

  /// [EmailAuthentication] - Register

  /// [ReAuthenticate] - ReAuthenticate User

  /// [EmailAuthentication] - Mail Verification

  /// [EmailAuthentication] - Forget Password

/* -------------- Federated identity & social sign-in -------------- */

  /// [GoogleAuthentication] - Google

  /// [FacebookAuthentication] - Facebook

/* -------------- ./end Federated identity & social sign-in -------------- */

  /// [LogoutUser] - Valid for any authentication

  /// DeleteUser - Remove user auth and FireStore Account
}