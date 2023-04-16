import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    buildHeader() {
      return Row(
        children: [
          const Icon(
            Icons.menu,
            size: 27,
            color: Color(0xFFF88406),
          ),
          const Spacer(),
          CircleAvatar(
            radius: size.width * 0.05,
            backgroundColor: Colors.white,
            backgroundImage: const AssetImage("assets/verse.jpg"),
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.fromLTRB(
          size.width * 0.1,
          size.height * 0.08,
          size.width * 0.1,
          0,
        ),
        child: Column(
          children: [
            buildHeader(),
          ],
        ),
      ),
    );
  }
}
