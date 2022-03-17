import 'package:flutter/material.dart';
import 'package:payflow_nlw_together_flutter/shared/themes/appColors.dart';
import 'package:payflow_nlw_together_flutter/shared/themes/appImages.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.background,
        body: Stack(
          children: [
            Center(child: Image.asset(AppImages.union)),
            Center(child: Image.asset(AppImages.logoFull))
          ],
        ));
  }
}
