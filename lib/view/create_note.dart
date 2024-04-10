import 'package:flutter/material.dart';
import 'package:notely/constants/colors.dart';
import 'package:notely/utils/size/deviceSize.dart';
import 'package:notely/utils/size/space.dart';
import 'package:notely/utils/widgets/custom_input.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class NotelyCreateNoteScreen extends StatefulWidget {
  const NotelyCreateNoteScreen({super.key});

  @override
  State<NotelyCreateNoteScreen> createState() => _NotelyCreateNoteScreenState();
}

class _NotelyCreateNoteScreenState extends State<NotelyCreateNoteScreen> {
  TextEditingController noteTitleController = TextEditingController();
  TextEditingController noteContentController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        centerTitle: true,
        title: Text(
          "Edit",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              FeatherIcons.share,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              FeatherIcons.pocket,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(
            25,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customInputField(
                hintText: "Title",
                controller: noteTitleController,
                background: NotelyColors.primaryColor,
              ),
              SpaceSize.setHeightSpace(
                value: DeviceSize.getDeviceHeight(context: context) * 0.04,
              ),
              customInputField(
                hintText: "Content",
                controller: noteContentController,
                background: NotelyColors.primaryColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
