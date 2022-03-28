import 'package:flutter/material.dart';
import 'package:payflow_nlw_together_flutter/shared/themes/app_colors.dart';
import 'package:payflow_nlw_together_flutter/shared/themes/app_text_styles.dart';
import 'package:payflow_nlw_together_flutter/shared/widgets/bottom_sheet/bottom_sheet_widget.dart';
import 'package:payflow_nlw_together_flutter/shared/widgets/label_button/label_button.dart';
import 'package:payflow_nlw_together_flutter/shared/widgets/label_buttons_set/label_buttons_set.dart';

class BarcodeScannerPage extends StatefulWidget {
  BarcodeScannerPage({Key? key}) : super(key: key);

  @override
  _BarcodeScannerPageState createState() => _BarcodeScannerPageState();
}

class _BarcodeScannerPageState extends State<BarcodeScannerPage> {
  @override
  Widget build(BuildContext context) {
    return BottomSheetWidget(
        primaryLabel: "Escanear novamento",
        onPrimaryPressed: () {},
        secondaryLabel: "Digitar código",
        onSecondaryPressed: () {},
        title: "Não foi possível identificar um código de barras",
        message: "Tente escanear novamente ou digite o código do seu boleto");
    return SafeArea(
      top: true,
      bottom: true,
      left: true,
      right: true,
      child: RotatedBox(
        quarterTurns: 1,
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.black,
              title: Text(
                "Escaneie o código de barras do boleto",
                style: TextStyles.buttonBackground,
              ),
              leading: BackButton(color: AppColors.background),
            ),
            body: Column(
              children: [
                Expanded(
                    child: Container(color: Colors.black.withOpacity(0.6))),
                Expanded(flex: 2, child: Container(color: Colors.transparent)),
                Expanded(
                    child: Container(color: Colors.black.withOpacity(0.6))),
              ],
            ),
            bottomNavigationBar: LabelButtonsSet(
              primaryLabel: "Inserir código de barras",
              onPrimaryPressed: () {},
              secondaryLabel: "Adicionar da galeria",
              onSecondaryPressed: () {},
            )),
      ),
    );
  }
}
