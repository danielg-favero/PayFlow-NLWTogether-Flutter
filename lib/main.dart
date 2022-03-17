// importando o flutter para dentro do dart
import 'package:flutter/material.dart';
import 'package:payflow_nlw_together_flutter/models/login/loginPage.dart';
import 'package:payflow_nlw_together_flutter/models/splash/splashPage.dart';
import 'package:payflow_nlw_together_flutter/shared/themes/appColors.dart';

void main() {
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Payflow",
      theme: ThemeData(primaryColor: AppColors.primary),
      home: LoginPage(),
    );
  }
}
