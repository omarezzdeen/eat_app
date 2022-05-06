import 'dart:async';

import 'package:flutter/material.dart';

import '../utils/images.dart';
import '../utils/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3),
            () => Navigator.of(context).pushReplacementNamed(Routs.loginScreen));
  }

  @override
  Widget build(BuildContext context) {
    return  Image.asset(
      ImageResources.splashImage,
      fit: BoxFit.cover,
    );
  }
}
