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

TextStyle buttonTextStyle = const TextStyle(
  fontFamily: "Nunito",
  fontSize: 18,
  fontWeight: FontWeight.w600,
  color: Colors.white,
);

 ButtonStyle buttonStyle = ElevatedButton.styleFrom(
  backgroundColor: const Color(0xFFF88406),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
  ),
);

