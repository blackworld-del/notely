import 'package:flutter/material.dart';
import 'package:notely/constants/colors.dart';
import 'package:notely/utils/size/deviceSize.dart';
import 'package:notely/utils/size/space.dart';
import 'package:notely/utils/widgets/custom_button.dart';
import 'package:notely/utils/widgets/custom_input.dart';
import 'package:notely/view/home.dart';

class NotelyPricingScreen extends StatefulWidget {
  const NotelyPricingScreen({super.key});

  @override
  State<NotelyPricingScreen> createState() => _NotelyPricingScreenState();
}

class _NotelyPricingScreenState extends State<NotelyPricingScreen> {
  int selectedChipIndex = 0;
  List<String> pricingPlan = [
    "Annual\n\$79.99\nper year",
    "Monthly\n\$7.99\nper month"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          "Notely Premium",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return NotelyHomeScreen();
                  }),
                  (route) => false,
                );
              },
              icon: Icon(
                Icons.cancel,
                color: NotelyColors.buttonColor,
              ))
        ],
      ),
      body: Container(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.only(
            left: 29,
            right: 29,
            top: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  "assets/images/pricing.png",
                ),
              ),
              SpaceSize.setHeightSpace(
                value: DeviceSize.getDeviceHeight(context: context) * 0.02,
              ),
              Center(
                child: Text(
                  "Start Using Notely\nwith Premium Benefits",
                  textAlign: TextAlign.center, // Align text to the center
                  style: TextStyle(
                    color: NotelyColors.fontBoldColor,
                    fontWeight: FontWeight.w900,
                    fontSize: 18,
                  ),
                ),
              ),
              SpaceSize.setHeightSpace(
                value: DeviceSize.getDeviceHeight(context: context) * 0.03,
              ),
              authText(
                text: "✓ Save unlimited notes to a single project",
                color: Color(0xff5A5266),
                size: 14,
              ),
              SpaceSize.setHeightSpace(
                value: DeviceSize.getDeviceHeight(context: context) * 0.02,
              ),
              authText(
                text: "✓ Create unlimited projects and teams",
                color: Color(0xff5A5266),
                size: 14,
              ),
              SpaceSize.setHeightSpace(
                value: DeviceSize.getDeviceHeight(context: context) * 0.02,
              ),
              authText(
                text: "✓ Daily backups to keep your data safe",
                color: Color(0xff5A5266),
                size: 14,
              ),
              SpaceSize.setHeightSpace(
                value: DeviceSize.getDeviceHeight(context: context) * 0.03,
              ),
              // design the chip
              SizedBox(
                height: DeviceSize.getDeviceHeight(context: context) * 0.19,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10.0,
                  ),
                  itemCount:
                      pricingPlan.length, // Total number of items in the grid
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedChipIndex = index;
                        });
                      },
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: NotelyColors.seconderyColor.withOpacity(0.7),
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            // Add border for the selected chip
                            color: selectedChipIndex == index
                                ? Color(0xffF47F6B)
                                : Colors.transparent,
                            width: 2,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            pricingPlan[index],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SpaceSize.setHeightSpace(
                value: DeviceSize.getDeviceHeight(context: context) * 0.05,
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
                  text: "Subscribe",
                  height: DeviceSize.getDeviceHeight(context: context) * 0.07,
                  width: double.infinity,
                  backgroundColor: NotelyColors.buttonColor,
                  textColor: Colors.white,
                ),
              ),
              SpaceSize.setHeightSpace(
                value: DeviceSize.getDeviceHeight(context: context) * 0.015,
              ),
              Center(
                child: GestureDetector(
                  child: Text(
                    "Restore Purchase",
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
