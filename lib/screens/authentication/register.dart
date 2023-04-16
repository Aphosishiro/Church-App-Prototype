import 'package:church_app_prototype/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:church_app_prototype/shared/constant.dart';

class Register extends StatelessWidget {
  const Register({super.key});

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
            "Create an account",
            style: headerText,
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          Text(
            "Worship with us!",
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

    buildCreateAccountButton() {
      return SizedBox(
        height: 55,
        width: double.infinity,
        child: ElevatedButton(
          style: buttonStyle,
          onPressed: () {
            navigatetonextscreen(const Home());
          },
          child: Text(
            "Create account",
            style: buttonTextStyle,
          ),
        ),
      );
    }

    buildGoogleAuthButton() {
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
                backgroundColor: Colors.white,
                backgroundImage: const AssetImage("assets/Google.png"),
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
          Navigator.pop(context);
        },
        child: RichText(
          text: TextSpan(children: [
            TextSpan(
              text: "You have an account?",
              style: subHeaderText,
            ),
            TextSpan(
              text: "  LOGIN",
              style: subHeaderTextVariable,
            )
          ]),
        ),
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.fromLTRB(
          size.width * 0.1,
          size.height * 0.15,
          size.width * 0.1,
          0,
        ),
        child: Column(
          children: [
            buildheader(),
            buildFormField(
              "Full Name",
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
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
            buildCreateAccountButton(),
            SizedBox(
              height: size.height * 0.03,
            ),
            buildGoogleAuthButton(),
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
