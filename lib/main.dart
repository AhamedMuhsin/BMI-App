import 'package:bmi_app/constants/app_colors.dart';
import 'package:bmi_app/screens/splash_screen.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(builder: (context) => const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: AppColors.primaryColors.neonRed),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
