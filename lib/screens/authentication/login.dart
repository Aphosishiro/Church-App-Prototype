import 'package:church_app_prototype/screens/authentication/register.dart';
import 'package:church_app_prototype/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:church_app_prototype/shared/constant.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    void navigatetonextscreen(Widget navigate) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return navigate;
          },
        ),
      );
    }

    buildheader() {
      return Column(
        children: [
          Text(
            "login",
            style: headerText,
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          Text(
            "Welcome Back!",
            style: subHeaderText,
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
        ],
      );
    }

    buildFormField(String hint) {
      return TextFormField(
        decoration: textFieldStyle.copyWith(hintText: hint),
      );
    }

    buildLoginButton() {
      return SizedBox(
        height: 55,
        width: double.infinity,
        child: ElevatedButton(
          style: buttonStyle,
          onPressed: () {
            navigatetonextscreen(const Home());
          },
          child: Text(
            "Login",
            style: buttonTextStyle,
          ),
        ),
      );
    }

    buildGoogleLoginButton() {
      return SizedBox(
        height: 55,
        width: double.infinity,
        child: ElevatedButton(
          style: buttonStyleVariable,
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                radius: size.width * 0.045,
                backgroundColor: Colors.red,
                //backgroundImage: const AssetImage("assets/Google.png"),
              ),
              Text(
                "Continue with Google",
                style: buttonTextStyleVariable,
              ),
            ],
          ),
        ),
      );
    }

    buildToggleOption() {
      return GestureDetector(
        onTap: () {
          navigatetonextscreen(const Register());
        },
        child: RichText(
          text: TextSpan(children: [
            TextSpan(
              text: "Are you a new user?",
              style: subHeaderText,
            ),
            TextSpan(
              text: "  REGISTER",
              style: subHeaderTextVariable,
            )
          ]),
        ),
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.symmetric(
            vertical: size.height * 0.15, horizontal: size.width * 0.1),
        child: Column(
          children: [
            buildheader(),
            buildFormField(
              "Email",
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            buildFormField(
              "Password",
            ),
            SizedBox(
              height: size.height * 0.07,
            ),
            buildLoginButton(),
            SizedBox(
              height: size.height * 0.03,
            ),
            buildGoogleLoginButton(),
            SizedBox(
              height: size.height * 0.05,
            ),
            buildToggleOption(),
          ],
        ),
      ),
    );
  }
}
