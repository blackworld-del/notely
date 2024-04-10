import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:notely/constants/colors.dart';
import 'package:notely/utils/size/deviceSize.dart';
import 'package:notely/utils/size/space.dart';
import 'package:notely/utils/widgets/custom_input.dart';
import 'package:notely/view/create_note.dart';

import '../utils/widgets/custom_button.dart';

class NotelyHomeScreen extends StatelessWidget {
  NotelyHomeScreen({super.key});
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "All Notes",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
        leading: IconButton(
            onPressed: () {
              scaffoldKey.currentState?.openDrawer();
            },
            icon: Icon(
              FeatherIcons.menu,
            )),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              FeatherIcons.globe,
              color: NotelyColors.fontBoldColor,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              FeatherIcons.search,
              color: NotelyColors.fontBoldColor,
            ),
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.all(23),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/first_note.png",
                width: DeviceSize.getDeviceWidth(context: context) * 0.7,
                height: DeviceSize.getDeviceHeight(context: context) * 0.4,
              ),
              Center(
                child: Text(
                  "Create Your First Note",
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
                  "Add a note about anything (your thoughts on climate change, or your history essay) and share it witht the world.",
                  textAlign: TextAlign.center, // Align text to the center
                  style: TextStyle(
                    color: Color(0xff595550).withOpacity(0.5),
                    fontWeight: FontWeight.w700,
                    fontSize: 13,
                  ),
                ),
              ),
              SpaceSize.setHeightSpace(
                value: DeviceSize.getDeviceHeight(context: context) * 0.09,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return NotelyCreateNoteScreen();
                    }),
                  );
                },
                child: customButton(
                  text: "Create Note",
                  height: DeviceSize.getDeviceHeight(context: context) * 0.07,
                  width: double.infinity,
                  backgroundColor: NotelyColors.buttonColor,
                  textColor: Colors.white,
                ),
              ),
              SizedBox(
                height: DeviceSize.getDeviceHeight(context: context) * 0.015,
              ),
              GestureDetector(
                child: Text(
                  "Import Notes",
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
              SizedBox(
                width: double.infinity,
                height: DeviceSize.getDeviceHeight(context: context) * 0.7,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Divider(
                      color: NotelyColors.fontLightColor.withOpacity(0.1),
                    ),
                    SpaceSize.setHeightSpace(
                      value:
                          DeviceSize.getDeviceHeight(context: context) * 0.02,
                    ),
                    authText(
                      text: "Settings",
                      color: NotelyColors.fontBoldColor.withOpacity(0.5),
                      size: 16,
                    ),
                    SpaceSize.setHeightSpace(
                      value:
                          DeviceSize.getDeviceHeight(context: context) * 0.02,
                    ),
                    authText(
                      text: "Profile",
                      color: NotelyColors.fontBoldColor.withOpacity(0.5),
                      size: 16,
                    ),
                    SpaceSize.setHeightSpace(
                      value:
                          DeviceSize.getDeviceHeight(context: context) * 0.02,
                    ),
                    authText(
                      text: "Log Out",
                      color: NotelyColors.fontBoldColor.withOpacity(0.5),
                      size: 16,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
