import 'package:flutter/material.dart';

TextStyle headerText = const TextStyle(
  fontSize: 23,
  fontFamily: "Nunito",
  fontWeight: FontWeight.w600,
  color: Color(0xFF585858),
);

TextStyle subHeaderText = const TextStyle(
  fontSize: 13,
  fontFamily: "Poppins",
  color: Color(0xFF585858),
);

TextStyle subHeaderTextVariable = const TextStyle(
  fontSize: 13,
  fontFamily: "Poppins",
  color: Color(0xFFF88406),
);

TextStyle titleTextStyle = const TextStyle(
  fontFamily: "Poppins",
  fontSize: 13,
  color: Colors.white,
);

TextStyle subtitleTextStyle = const TextStyle(
  fontFamily: "Poppins",
  fontSize: 12,
  color: Colors.white,
);

TextStyle buttonTextStyle = const TextStyle(
  fontFamily: "Nunito",
  fontSize: 18,
  fontWeight: FontWeight.w600,
  color: Colors.white,
);

TextStyle buttonTextStyleVariable = const TextStyle(
  fontFamily: "Nunito",
  fontSize: 18,
  fontWeight: FontWeight.w600,
  color: Color(0xFF585858),
);

ButtonStyle buttonStyle = ElevatedButton.styleFrom(
  backgroundColor: const Color(0xFFF88406),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
  ),
);

ButtonStyle buttonStyleVariable = ElevatedButton.styleFrom(
  backgroundColor: Colors.white,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
  ),
);

InputDecoration textFieldStyle = const InputDecoration(
  hintStyle: TextStyle(
    fontFamily: "Poppins",
    fontSize: 15,
  ),
);
