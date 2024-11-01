import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inndekost/view/splash_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Future.delayed(Duration(seconds: 2), () {
      // TODO isLogin Function
      Get.off(() => const SplashPage());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(80),
              color: Colors.grey,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 1.5,
                  blurRadius: 4,
                  offset: Offset(0, 3),
                )
              ],
              image: DecorationImage(
                image: AssetImage("images/avatartion.png"),
                fit: BoxFit.cover
              ),
            ),
          ),
        ),
      ),
    );
  }
}
