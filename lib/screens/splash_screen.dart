import 'package:bmi_app/constants/app_colors.dart';
// import 'package:bmi_app/main.dart';
import 'package:bmi_app/screens/app_screens/main_win.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  AnimationController? _controller;

  @override
  void initState() {
    _controller = AnimationController(vsync: this);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColors.neonRed,
      body: Center(
          child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
              bottom: 10,
              child: Text(
                "",
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                    color: AppColors.primaryColors.offWhite),
              )),
          Lottie.asset(
            "assets/splash_loader2.json",
            width: 350,
            height: 250,
            controller: _controller,
            onLoaded: (p0) {
              _controller!
                ..duration = p0.duration
                ..forward().whenComplete(() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MainWindow()));
                });
            },
          ),
        ],
      )),
    );
  }
}
