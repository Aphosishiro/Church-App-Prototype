import 'package:church_app_prototype/shared/constant.dart';
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
            backgroundImage: const AssetImage("assets/user.jpg"),
          ),
        ],
      );
    }

    buildVerseOfTheDayCard() {
      return Container(
        height: size.height * 0.26,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: const DecorationImage(
            image: AssetImage("assets/verse.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.black.withOpacity(0.5),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.03, vertical: size.height * 0.03),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Verse of the day",
                  style: titleTextStyle,
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                Text(
                  "Romans 8 : 11",
                  style: titleTextStyle,
                ),
                SizedBox(
                  height: size.height * 0.005,
                ),
                Text(
                  "And if the Spirit of him who raised Jesus from the dead is living in you, he who raised Christ from the dead will also give life to your mortal bodies because of his Spirit who lives in you.",
                  style: subtitleTextStyle,
                ),
              ],
            ),
          ),
        ),
      );
    }

    buildMessageHeader() {
      return Row(
        children: [
          Text(
            "Messages",
            style: headerText,
          ),
          const Spacer(),
          const Icon(
            Icons.filter_list_rounded,
            size: 27,
            color: Color(0xFFF88406),
          )
        ],
      );
    }

    buildMessageCards(String image, String title, String preacher) {
      return Container(
        height: size.height * 0.34,
        width: size.width * 0.5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.black.withOpacity(0.5),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.03,
              vertical: size.height * 0.02,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: titleTextStyle,
                ),
                const Divider(
                  thickness: 2,
                  color: Colors.white,
                ),
                Text(
                  preacher,
                  style: subtitleTextStyle,
                ),
              ],
            ),
          ),
        ),
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
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              buildHeader(),
              SizedBox(
                height: size.height * 0.04,
              ),
              buildVerseOfTheDayCard(),
              SizedBox(
                height: size.height * 0.03,
              ),
              buildMessageHeader(),
              SizedBox(
                height: size.height * 0.02,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    buildMessageCards(
                      "assets/pstchris.png",
                      "Understanding God's will",
                      "Rev. Chris Oyakhilome",
                    ),
                    SizedBox(
                      width: size.width * 0.03,
                    ),
                    buildMessageCards(
                      "assets/psttunde.png",
                      "A New Dawn",
                      "Rev. Tunde Bakare",
                    ),
                    SizedBox(
                      width: size.width * 0.03,
                    ),
                    buildMessageCards(
                      "assets/pstadeboye.jpg",
                      "Faith and Works",
                      "Rev. Enoch Adeboye",
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
