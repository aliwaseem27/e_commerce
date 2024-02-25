import 'package:e_commerce/data/repositories/authentication/authentication_repository.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'app.dart';
import 'firebase_options.dart';

Future<void> main() async {
  // Widgets Bindings
  final WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  // Init Local Storage
  GetStorage.init();

  // TODO: Init Payment Methods
  // Await Native Splash
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  // Initialize Firebase
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((FirebaseApp value) => Get.put(AuthenticationRepository()));

  // TODO: Initialize Authentication

  // Load all Material Design / Themes / Localizations / Bindings
  runApp(const MyApp());
}
