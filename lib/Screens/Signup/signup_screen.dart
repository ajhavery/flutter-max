import 'package:auth_app/Screens/Signup/components/signup_background.dart';
import 'package:auth_app/Screens/Signup/components/signup_body.dart';
import 'package:auth_app/components/already_have_an_account_check.dart';
import 'package:auth_app/components/rounded_button.dart';
import 'package:auth_app/components/rounded_input_field.dart';
import 'package:auth_app/components/rounded_password_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SignUpBody(
        child: Column(),
      ),
    );
  }
}
