import 'package:flutter/material.dart';

class SpaceSize {
  static Widget setWidthSpace({
    required double value,
  }) {
    return SizedBox(
      width: value,
    );
  }

  static Widget setHeightSpace({
    required double value,
  }) {
    return SizedBox(
      height: value,
    );
  }
}
