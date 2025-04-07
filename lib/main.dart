import 'package:flutter/material.dart';
import 'package:shop_app_example/screens/dashboard_page.dart';
import 'package:shop_app_example/screens/fragments/profile_page.dart';
import 'package:shop_app_example/screens/login/login_page.dart';
import 'package:shop_app_example/screens/register/register_page.dart';
import 'package:shop_app_example/screens/splash_screen.dart';
import 'package:shop_app_example/utils/colors.dart';
import 'package:shop_app_example/utils/routes_app.dart';

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
            color: Colors.black,
          ),
          bodyMedium: TextStyle(
            fontSize: 14,
            color: Colors.black,
          ),
          bodyLarge: TextStyle(
            fontSize: 18,
            color: Colors.black,
          ),  
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: colorMarineBlue),
      ),
      initialRoute: RoutesApp.login_page,
      routes: {
        RoutesApp.login_page: (context) => const LoginPage(),
        RoutesApp.register_page: (context) => const RegisterPage( ),
        RoutesApp.dashboard_page: (context) => const DashboardPage(),
        RoutesApp.profile_page: (context) => const ProfilePage(),
      },
    );
  }
}
