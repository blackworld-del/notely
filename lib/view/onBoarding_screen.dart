// ignore_for_file: unnecessary_import

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:notely/constants/colors.dart';
import 'package:notely/utils/size/deviceSize.dart';
import 'package:notely/utils/size/space.dart';
import 'package:notely/utils/widgets/custom_button.dart';
import 'package:notely/view/auth_create.dart';
import 'package:notely/view/auth_login.dart';

class NotelyOnBoardingScreen extends StatelessWidget {
  const NotelyOnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/onBoarding.png",
                width: DeviceSize.getDeviceWidth(context: context) * 0.7,
                height: DeviceSize.getDeviceHeight(context: context) * 0.4,
              ),
              Center(
                child: Text(
                  "World’s Safest And\nLargest Digital Notebook",
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
                  "Notely is the world’s safest, largest\nand intelligent digital notebook. Join over 10M+ users already using Notely.",
                  textAlign: TextAlign.center, // Align text to the center
                  style: TextStyle(
                    color: Color(0xff595550).withOpacity(0.5),
                    fontWeight: FontWeight.w700,
                    fontSize: 13,
                  ),
                ),
              ),
              SizedBox(
                height: DeviceSize.getDeviceHeight(context: context) * 0.09,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return NotelyAuthCreateScreen();
                    }),
                  );
                },
                child: customButton(
                  text: "Get Started",
                  height: DeviceSize.getDeviceHeight(context: context) * 0.07,
                  width: double.infinity,
                  backgroundColor: NotelyColors.buttonColor,
                ),
              ),
              SizedBox(
                height: DeviceSize.getDeviceHeight(context: context) * 0.015,
              ),
              GestureDetector(
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
            ],
          ),
        ),
      ),
    );
  }
}
