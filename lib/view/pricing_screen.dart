import 'package:flutter/material.dart';
import 'package:notely/constants/colors.dart';
import 'package:notely/utils/size/deviceSize.dart';
import 'package:notely/utils/size/space.dart';
import 'package:notely/utils/widgets/custom_button.dart';
import 'package:notely/utils/widgets/custom_input.dart';

class NotelyPricingScreen extends StatefulWidget {
  const NotelyPricingScreen({super.key});

  @override
  State<NotelyPricingScreen> createState() => _NotelyPricingScreenState();
}

class _NotelyPricingScreenState extends State<NotelyPricingScreen> {
  TextEditingController identifier_controller = TextEditingController();
  TextEditingController password_controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Notely Premium",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w900,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.cancel,
              ))
        ],
      ),
      body: Container(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.all(23),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                    height:
                        DeviceSize.getDeviceHeight(context: context) * 0.04),
                Center(
                  child: Text(
                    "Welcome Back",
                    textAlign: TextAlign.center, // Align text to the center
                    style: TextStyle(
                      color: NotelyColors.fontBoldColor,
                      fontWeight: FontWeight.w900,
                      fontSize: 21,
                    ),
                  ),
                ),
                SpaceSize.setHeightSpace(
                  value: DeviceSize.getDeviceHeight(context: context) * 0.015,
                ),
                Center(
                  child: Text(
                    "Join Notely for free. Create and share unlimited notes with your friends.",
                    textAlign: TextAlign.center, // Align text to the center
                    style: TextStyle(
                      color: Color(0xff595550).withOpacity(0.5),
                      fontWeight: FontWeight.w700,
                      fontSize: 13,
                    ),
                  ),
                ),
                SizedBox(
                  height: DeviceSize.getDeviceHeight(context: context) * 0.07,
                ),
                authText(text: "Username / Email"),
                SizedBox(
                  height: DeviceSize.getDeviceHeight(context: context) * 0.01,
                ),
                customInputField(
                  hintText: "Username or email address",
                  controller: identifier_controller,
                ),
                SizedBox(
                  height: DeviceSize.getDeviceHeight(context: context) * 0.02,
                ),
                authText(text: "Password"),
                SizedBox(
                  height: DeviceSize.getDeviceHeight(context: context) * 0.01,
                ),
                customInputField(
                  hintText: "Password",
                  controller: password_controller,
                ),
                SizedBox(
                  height: DeviceSize.getDeviceHeight(context: context) * 0.09,
                ),
                customButton(
                  text: "Create Account",
                  height: DeviceSize.getDeviceHeight(context: context) * 0.07,
                  width: double.infinity,
                  backgroundColor: NotelyColors.buttonColor,
                ),
                SizedBox(
                  height: DeviceSize.getDeviceHeight(context: context) * 0.015,
                ),
                Center(
                  child: Text(
                    "Already have an account?",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: NotelyColors.buttonColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
