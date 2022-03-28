import 'package:flutter/material.dart';
import 'package:payflow_nlw_together_flutter/shared/themes/app_text_styles.dart';
import 'package:payflow_nlw_together_flutter/shared/widgets/label_button/label_button.dart';

class LabelButtonsSet extends StatelessWidget {
  final String primaryLabel;
  final VoidCallback onPrimaryPressed;

  final String secondaryLabel;
  final VoidCallback onSecondaryPressed;

  final bool enablePrimaryColor;

  const LabelButtonsSet(
      {Key? key,
      required this.primaryLabel,
      required this.onPrimaryPressed,
      required this.secondaryLabel,
      required this.onSecondaryPressed,
      this.enablePrimaryColor = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      child: Row(
        children: [
          Expanded(
            child: LabelButton(
              label: primaryLabel,
              onPressed: onPrimaryPressed,
              style: enablePrimaryColor ? TextStyles.buttonPrimary : null,
            ),
          ),
          VerticalDivider(),
          Expanded(
            child: LabelButton(
              label: secondaryLabel,
              onPressed: onSecondaryPressed,
            ),
          )
        ],
      ),
    );
  }
}
