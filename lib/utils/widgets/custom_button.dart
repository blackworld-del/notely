import 'package:flutter/material.dart';

Widget customButton({
  required double height,
  required double width,
  required Color backgroundColor,
  required String text,
  required Color textColor,
}) {
  return Container(
    height: height,
    width: width,
    child: Center(
        child: Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.w900,
        color: textColor,
        fontSize: 19,
      ),
    )),
    decoration: BoxDecoration(
      color: backgroundColor,
      borderRadius: BorderRadius.circular(13),
    ),
  );
}
