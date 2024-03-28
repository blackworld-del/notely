// ignore_for_file: unnecessary_import

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:notely/constants/colors.dart';

Widget customInputField({
  required String hintText,
  required TextEditingController controller,
}) {
  return Container(
    decoration: BoxDecoration(
      color: NotelyColors.seconderyColor.withOpacity(0.6), // Background color
      borderRadius: BorderRadius.circular(10.0), // Optional: border radius
    ),
    padding: EdgeInsets.symmetric(horizontal: 15.0), // Optional: padding
    child: TextField(
      cursorColor: NotelyColors.buttonColor,
      controller: controller,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: NotelyColors.fontLightColor,
      ),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          fontWeight: FontWeight.bold,
        ),
        border: InputBorder.none, // Optional: remove border
      ),
    ),
  );
}

Widget authText({
  required String text,
}) {
  return Text(
    text,
    style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 13,
      color: NotelyColors.fontBoldColor,
    ),
  );
}
