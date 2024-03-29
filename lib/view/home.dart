import 'package:flutter/material.dart';
import 'package:notely/constants/colors.dart';
import 'package:notely/utils/size/deviceSize.dart';
import 'package:notely/utils/size/space.dart';
import 'package:notely/utils/widgets/custom_input.dart';

import '../utils/widgets/custom_button.dart';

class NotelyHomeScreen extends StatelessWidget {
  const NotelyHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "All Notes",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.public_outlined,
              color: NotelyColors.fontBoldColor,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: NotelyColors.fontBoldColor,
            ),
          ),
        ],
      ),
      drawer: Drawer(
        elevation: 0,
        backgroundColor: NotelyColors.seconderyColor,
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SpaceSize.setHeightSpace(
                value: DeviceSize.getDeviceHeight(context: context) * 0.08,
              ),
              customButton(
                text: "New Project",
                height: DeviceSize.getDeviceHeight(context: context) * 0.07,
                width: double.infinity,
                backgroundColor: NotelyColors.buttonColor,
                textColor: Colors.white,
              ),
              SpaceSize.setHeightSpace(
                value: DeviceSize.getDeviceHeight(context: context) * 0.07,
              ),
              authText(
                text: 'text',
                color: NotelyColors.fontBoldColor,
                size: 15,
              ),
              SpaceSize.setHeightSpace(
                value: DeviceSize.getDeviceHeight(context: context) * 0.03,
              ),
              authText(
                text: 'text',
                color: NotelyColors.fontBoldColor,
                size: 15,
              ),
              SpaceSize.setHeightSpace(
                value: DeviceSize.getDeviceHeight(context: context) * 0.03,
              ),
              authText(
                text: 'text',
                color: NotelyColors.fontBoldColor,
                size: 15,
              ),
              SpaceSize.setHeightSpace(
                value: DeviceSize.getDeviceHeight(context: context) * 0.03,
              ),
              authText(
                text: 'text',
                color: NotelyColors.fontBoldColor,
                size: 15,
              ),
              SpaceSize.setHeightSpace(
                value: DeviceSize.getDeviceHeight(context: context) * 0.03,
              ),
              authText(
                text: 'text',
                color: NotelyColors.fontBoldColor,
                size: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
