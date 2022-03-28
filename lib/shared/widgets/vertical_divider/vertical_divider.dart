import 'package:flutter/material.dart';
import 'package:payflow_nlw_together_flutter/shared/themes/app_colors.dart';

class VerticalDivider extends StatelessWidget {
  const VerticalDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 1, height: double.maxFinite, color: AppColors.stroke);
  }
}
