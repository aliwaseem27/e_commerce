import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(title: Text("Profile"), showBackArrow: true),
      body: SingleChildScrollView(),
    );
  }
}
