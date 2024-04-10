import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:notely/constants/colors.dart';
import 'package:notely/utils/size/deviceSize.dart';
import 'package:notely/utils/size/space.dart';
import 'package:notely/utils/widgets/custom_button.dart';
import 'package:notely/utils/widgets/custom_input.dart';
import 'package:notely/view/auth_login.dart';
import 'package:notely/view/pricing_screen.dart';

class NotelyAuthCreateScreen extends StatefulWidget {
  const NotelyAuthCreateScreen({super.key});

  @override
  State<NotelyAuthCreateScreen> createState() => _NotelyAuthCreateScreenState();
}

class _NotelyAuthCreateScreenState extends State<NotelyAuthCreateScreen> {
  TextEditingController email_controller = TextEditingController();
  TextEditingController username_controller = TextEditingController();
  TextEditingController password_controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Notely",
          style: TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.all(23),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  height: DeviceSize.getDeviceHeight(context: context) * 0.04),
              Center(
                child: Text(
                  "Create a free account",
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
              authText(
                text: "Email",
                color: NotelyColors.fontBoldColor,
                size: 13,
              ),
              SizedBox(
                height: DeviceSize.getDeviceHeight(context: context) * 0.01,
              ),
              customInputField(
                hintText: "Email",
                controller: email_controller,
                background: NotelyColors.seconderyColor.withOpacity(0.6),
              ),
              SizedBox(
                height: DeviceSize.getDeviceHeight(context: context) * 0.02,
              ),
              authText(
                text: "Username",
                color: NotelyColors.fontBoldColor,
                size: 13,
              ),
              SizedBox(
                height: DeviceSize.getDeviceHeight(context: context) * 0.01,
              ),
              customInputField(
                hintText: "Username",
                controller: username_controller,
                background: NotelyColors.seconderyColor.withOpacity(0.6),
              ),
              SizedBox(
                height: DeviceSize.getDeviceHeight(context: context) * 0.02,
              ),
              authText(
                text: "Password",
                color: NotelyColors.fontBoldColor,
                size: 13,
              ),
              SizedBox(
                height: DeviceSize.getDeviceHeight(context: context) * 0.01,
              ),
              customInputField(
                hintText: "Password",
                controller: password_controller,
                background: NotelyColors.seconderyColor.withOpacity(0.6),
              ),
              SizedBox(
                height: DeviceSize.getDeviceHeight(context: context) * 0.09,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return NotelyPricingScreen();
                    }),
                  );
                },
                child: customButton(
                  text: "Create Account",
                  height: DeviceSize.getDeviceHeight(context: context) * 0.07,
                  width: double.infinity,
                  backgroundColor: NotelyColors.buttonColor,
                  textColor: Colors.white,
                ),
              ),
              SizedBox(
                height: DeviceSize.getDeviceHeight(context: context) * 0.015,
              ),
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return NotelyAuthLoginScreen();
                      }),
                    );
                  },
                  child: Text(
                    "Already have an account?",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: NotelyColors.buttonColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
