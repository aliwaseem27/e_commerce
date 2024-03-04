import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/helpers/network_manager.dart';
import 'package:e_commerce/utils/popups/full_screen_loader.dart';
import 'package:e_commerce/utils/popups/loaders.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  /// Variables
  final hidePassword = true.obs;
  final privacyPolicy = true.obs;
  final email = TextEditingController();
  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final username = TextEditingController();
  final password = TextEditingController();
  final phoneNumber = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  /// SIGNUP
  Future<void> signup() async {
    try {
      // Start Loading
      TFullScreenLoader.openLoadingDialog("We are processing your information...", TImages.paypal);

      // Check Internet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) return;

      // Form Validation
      if (!signupFormKey.currentState!.validate()) return;

      // Privacy Policy check
      if (!privacyPolicy.value) {
        TLoaders.warningSnackBar(
          title: "Accept Privacy Policy",
          message: "In order to create account, you must have to read and accept the Privacy Policy and Terms of Use.",
        );
        return;
      }

      // Register user in the FireBase Authentication & Save user data in the FireBase

      // Save authenticated user data in the FireStore

      // Show Success Message

      // Move to verify email screen
    } catch (e) {
      // Show more Generic Error to the user
      TLoaders.errorSnackBar(title: "Oh snap!", message: e.toString());
    } finally {
      // Remove Loader
      TFullScreenLoader.stopLoading();
    }
  }
}
