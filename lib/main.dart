import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:vikncodes_machine_test/view/login_screen.dart';

void main() {
  runApp(
    const RootWidget(),
  );
}

class RootWidget extends StatelessWidget {
  const RootWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      theme: ThemeData(
        useMaterial3: true

      ),
      home: const LoginScreen(),
    );
  }
}
