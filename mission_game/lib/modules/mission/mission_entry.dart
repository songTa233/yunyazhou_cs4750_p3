import 'package:flutter/material.dart';
import 'package:flutter_reward/helper/extension/int_extension.dart';
import 'package:flutter_reward/helper/extension/string_extension.dart';
import 'package:flutter_reward/helper/extension/widget_extension.dart';
import 'package:flutter_reward/modules/base/base_view.dart';
import 'package:flutter_reward/modules/mission/all_mission.dart';
import 'package:flutter_reward/modules/mission/mission_create.dart';
import 'package:flutter_reward/widgets/theme_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MissionEntry extends StatefulWidget {
  const MissionEntry({super.key});

  @override
  State<MissionEntry> createState() => _MissionEntryState();
}

class _MissionEntryState extends BasePageState<MissionEntry> {
  @override
  Widget buildContent(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(children: [SizedBox()]),
          missionItem('Publish Mission', onTapped: () {
            Get.to(() => const MissionCreate());
          }),
          30.h.heightBox,
          missionItem('View All Missions', onTapped: () {
            Get.to(() => const AllMission(type: 0));
          }),
          10.h.heightBox,
          missionItem('View Your Missions', onTapped: () {
            Get.to(() => const AllMission(type: 1));
          }),
        ],
      )
    );
  }

  Widget missionItem(String title, {Function? onTapped}) {
    return ThemeButton(
      width: 250.w,
      height: 100.h,
      text: title,
      onPressed: () {
        onTapped?.call();
      },
      // padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
      // child: title.exText(),
    );
  }
}
