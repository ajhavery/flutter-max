import 'package:auth_app/Screens/Login/login_screen.dart';
import 'package:auth_app/Screens/Signup/components/or_divider.dart';
import 'package:auth_app/Screens/Signup/components/signup_background.dart';
import 'package:auth_app/Screens/Signup/components/social_icon.dart';
import 'package:auth_app/components/already_have_an_account_check.dart';
import 'package:auth_app/components/rounded_button.dart';
import 'package:auth_app/components/rounded_input_field.dart';
import 'package:auth_app/components/rounded_password_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpBody extends StatelessWidget {
  final Widget child;
  const SignUpBody({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SignupBackground(
        child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "SIGN UP",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: size.height * 0.01),
          SvgPicture.asset(
            "assets/icons/signup.svg",
            height: size.height * 0.35,
          ),
          RoundedInputField(
            hintText: "Your Email",
            onChanged: (value) {},
          ),
          RoundedPasswordField(
            hintText: "Your Password",
            onChanged: (value) {},
          ),
          RoundedPasswordField(
            hintText: "Confirm Password",
            onChanged: (value) {},
          ),
          RoundedButton(
            text: "SIGN UP",
            pressHandler: () {},
          ),
          SizedBox(height: size.height * 0.03),
          AlreadyHaveAnAccountCheck(
            login: false,
            signupHandler: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return LoginScreen();
                  },
                ),
              );
            },
          ),
          OrDivider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SocialIcon(
                iconsrc: "assets/icons/facebook.svg",
                pressHandler: () {},
              ),
              SocialIcon(
                iconsrc: "assets/icons/google-plus.svg",
                pressHandler: () {},
              ),
              SocialIcon(
                iconsrc: "assets/icons/twitter.svg",
                pressHandler: () {},
              ),
            ],
          )
        ],
      ),
    ));
  }
}
