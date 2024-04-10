// ignore_for_file: unnecessary_import

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:notely/constants/colors.dart';

Widget customInputField({
  required String hintText,
  required TextEditingController controller,
  required Color background,
}) {
  return Container(
    decoration: BoxDecoration(
      color: background, // Background color
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
      maxLines: null,
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
  required Color color,
  required double size,
}) {
  return Text(
    textAlign: TextAlign.start,
    text,
    style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: size,
      color: color,
    ),
  );
}
