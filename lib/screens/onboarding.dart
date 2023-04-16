import 'package:church_app_prototype/screens/authentication/login.dart';
import 'package:church_app_prototype/shared/constant.dart';
import 'package:flutter/material.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

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

    buildOnboardingText() {
      return Center(
        child: Text(
          "Recovery happens with \n God every time",
          style: headerText,
          textAlign: TextAlign.center,
        ),
      );
    }

    buildOnboardingText2() {
      return Center(
        child: Text(
          "You are the salt of the earth and you are the light \n of the world, so let your light shine before people.",
          style: subHeaderText,
          textAlign: TextAlign.center,
        ),
      );
    }

    buildGetStartedButton() {
      return SizedBox(
        height: 55,
        width: double.infinity,
        child: ElevatedButton(
          style: buttonStyle,
          onPressed: () {
            navigatetonextscreen(const Login());
          },
          child: Text(
            "Get Started",
            style: buttonTextStyle,
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(
            vertical: size.height * 0.1, horizontal: size.width * 0.08),
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.35,
              width: double.infinity,
              child: Image.asset("assets/logo.png"),
            ),
            SizedBox(
              height: size.height * 0.08,
            ),
            buildOnboardingText(),
            SizedBox(
              height: size.height * 0.03,
            ),
            buildOnboardingText2(),
            SizedBox(
              height: size.height * 0.1,
            ),
            buildGetStartedButton(),
          ],
        ),
      ),
    );
  }
}
