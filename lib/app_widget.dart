import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:payflow_nlw_together_flutter/modules/barcode_scanner/barcode_scanner_page.dart';
import 'package:payflow_nlw_together_flutter/modules/home/home_page.dart';
import 'package:payflow_nlw_together_flutter/modules/splash/splash_screen.dart';

import 'modules/login/login_page.dart';
import 'shared/themes/app_colors.dart';

class AppWidget extends StatelessWidget {
  // Travar as orientaçãoes do celular apenas nessas duas direções (agora cada tela precisa determinar se ela será virada ou não)
  AppWidget() {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Payflow",
      theme: ThemeData(
          primarySwatch: Colors.orange, primaryColor: AppColors.primary),
      initialRoute: "/splash",
      routes: {
        "/home": (context) => HomePage(),
        "/login": (context) => LoginPage(),
        "/splash": (context) => SplashPage(),
        "/barcode_scanner": (context) => BarcodeScannerPage()
      },
    );
  }
}
