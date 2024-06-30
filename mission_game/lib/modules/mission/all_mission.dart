import 'package:flutter/material.dart';
import 'package:flutter_reward/helper/extension/string_extension.dart';
import 'package:flutter_reward/main.dart';
import 'package:flutter_reward/modules/base/base_view.dart';
import 'package:flutter_reward/widgets/mission_display.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AllMission extends StatefulWidget {
  /// type 0 & all; 1 & my
  final int type;

  const AllMission({
    super.key,
    required this.type,
  });

  @override
  State<AllMission> createState() => _AllMissionState();
}

class _AllMissionState extends BasePageState<AllMission> {
  @override
  Widget buildContent(BuildContext context) {
    return Container(
      child: Obx(
        () => missionController.missions.isNotEmpty
            ? ListView.builder(
                itemCount: missionController.missions.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  if (widget.type == 1) {
                    if (missionController.missions[index].apply == true) {
                      return MissionDisplay(
                        mission: missionController.missions[index],
                      );
                    } else {
                      return const SizedBox();
                    }
                  } else {
                    return MissionDisplay(
                      mission: missionController.missions[index],
                    );
                  }
                },
              )
            : empty(),
      ),
    );
  }

  Widget empty() {
    return Center(
      child: 'No Missions Found'.exText(fontSize: 24.sp),
    );
  }

}
