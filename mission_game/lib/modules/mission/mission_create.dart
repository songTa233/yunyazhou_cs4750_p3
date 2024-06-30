import 'package:flutter/material.dart';
import 'package:flutter_reward/helper/extension/int_extension.dart';
import 'package:flutter_reward/helper/extension/string_extension.dart';
import 'package:flutter_reward/main.dart';
import 'package:flutter_reward/model/mission.dart';
import 'package:flutter_reward/modules/base/base_view.dart';
import 'package:flutter_reward/widgets/rewords_panel.dart';
import 'package:flutter_reward/widgets/s_input.dart';
import 'package:flutter_reward/widgets/theme_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MissionCreate extends StatefulWidget {
  final Mission? mission;

  const MissionCreate({super.key, this.mission});

  @override
  State<MissionCreate> createState() => _MissionCreateState();
}

class _MissionCreateState extends BasePageState<MissionCreate> {
  TextEditingController missionNameEditCtrl = TextEditingController();
  TextEditingController missionDetailEditCtrl = TextEditingController();
  Mission newMission = Mission();
  List<String> newMissionRewords = [];

  @override
  void initState() {
    if (widget.mission != null) {
      setState(() {
        missionNameEditCtrl = TextEditingController(text: widget.mission?.title);
        missionDetailEditCtrl = TextEditingController(text: widget.mission?.detail);
        newMissionRewords = widget.mission?.rewords ?? [];
      });
    }
    super.initState();
  }

  @override
  Widget buildContent(BuildContext context) {
    return SafeArea(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        'Create Mission'.exText(fontSize: 30.sp),
        60.h.heightBox,
        Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            'Mission Name: '.exText(fontSize: 20.sp),
            SInput(
              controller: missionNameEditCtrl,
              hintText: 'Enter your mission name',
            ),
          ],
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            "Mission Detail: ".exText(fontSize: 24.sp),
            Row(
              children: [
                Expanded(
                  child: SInput(
                    hintText: 'Enter your mission detail',
                    controller: missionDetailEditCtrl,
                    maxLines: 5,
                  ),
                )
              ],
            )
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            "Reward: ".exText(fontSize: 24.sp),
            RewordsPanel(missionRewords: newMissionRewords, itemOnTap: (String reword) {
              setState(() {
                debugPrint('reword: $reword');
                if (widget.mission != null) {
                  if (widget.mission!.apply != true) {
                    return;
                  }
                }

                if (newMissionRewords.contains(reword)) {
                  newMissionRewords.remove(reword);
                } else {
                  newMissionRewords.add(reword);
                }

              });
            },)
          ],
        ),
        40.h.heightBox,
        widget.mission == null ? publishBtn() : applyBtn(),
      ],
    ).marginSymmetric(horizontal: 20.w));
  }



  Widget publishBtn() {
    return ThemeButton(
      width: 100.w,
      height: 40.h,
      text: 'Publish',
      onPressed: () {
        newMission.title = missionNameEditCtrl.text;
        newMission.detail = missionDetailEditCtrl.text;
        newMission.owner = '';
        newMission.rewords = newMissionRewords;
        missionController.createMission(newMission);
        Get.back();
      },
    );
  }

  Widget applyBtn() {
    return widget.mission?.apply != true ? ThemeButton(
      width: 200.w,
      height: 40.h,
      text: 'Take this mission',
      onPressed: () {
        int index = missionController.missions.indexOf(widget.mission);
        missionController.missions[index].apply = true;
        Get.back();
      },
    ) : SizedBox();
  }

}
