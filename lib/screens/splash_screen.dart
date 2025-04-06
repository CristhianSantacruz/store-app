import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shop_app_example/screens/login/login_page.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState(){
    super.initState();
    Timer(
      const Duration(seconds:4),
      () => Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => const LoginPage(),
      )),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/icon/shirt_icon.jpg'),
            const SizedBox(height: 20),
           Text(
              'Deja tu estilo en nuestras manos',
              style:Theme.of(context).textTheme.bodyLarge
            ),
          ],
        ),
      ),
    );
  }
}