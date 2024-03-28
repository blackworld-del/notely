import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DeviceSize {
  static double getDeviceWidth({
    required BuildContext context,
  }) {
    return MediaQuery.of(context).size.width;
  }

  static double getDeviceHeight({
    required BuildContext context,
  }) {
    return MediaQuery.of(context).size.height;
  }
}
