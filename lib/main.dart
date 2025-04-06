import 'package:flutter/material.dart';
import 'package:shop_app_example/screens/splash_screen.dart';
import 'package:shop_app_example/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        textTheme: const TextTheme(
          bodySmall: TextStyle(
            fontSize: 13,
            color: colorBlack,
          ),
          bodyMedium: TextStyle(
            fontSize: 14,
            color: colorBlack,
          ),
          bodyLarge: TextStyle(
            fontSize: 18,
            color: colorBlack,
          ),  
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: colorMarineBlue),
      ),
      home: const SplashScreen(),
    );
  }
}
