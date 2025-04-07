import 'package:flutter/material.dart';
import 'package:shop_app_example/utils/routes_app.dart';


class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(onPressed: (){
          Navigator.pushNamed(context,RoutesApp.login_page);
        }, child: Text("Cerrar Sesión")),
      ],
    );
  }
}