import 'package:flutter/widgets.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:payflow_nlw_together_flutter/shared/auth/authController.dart';

class LoginController {
  final authController = AuthController();

  Future<void> googleSigIn(BuildContext context) async {
    GoogleSignIn _googleSignIn = GoogleSignIn(
      scopes: [
        'email',
      ],
    );

    try {
      final response = await _googleSignIn.signIn();

      authController.setUser(context, response);

      print(response);
    } catch (error) {
      print(error);
    }
  }
}
