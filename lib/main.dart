import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'app.dart';
import 'firebase_options.dart';

Future<void> main() async {
  // TODO: Add Widgets Bindings
  // TODO: Init Local Storage
  // TODO: Init Payment Methods
  // TODO: Await Native Splash

  // TODO: Initialize Firebase
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  // TODO: Initialize Authentication

  // Load all Material Design / Themes / Localizations / Bindings
  runApp(const MyApp());
}
