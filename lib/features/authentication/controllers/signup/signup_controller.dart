import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController{
  static SignupController get instance => Get.find();

  /// Variables
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

      // Check Internet Connectivity

      // Form Validation

      // Privacy Policy check

      // Register user in the FireBase Authentication & Save user data in the FireBase

      // Save authenticated user data in the FireStore

      // Show Success Message

      // Move to verify email screen

    } catch (e) {
      // Show more Generic Error to the user
    } finally {
      // Remove Loader
    }
  }


}