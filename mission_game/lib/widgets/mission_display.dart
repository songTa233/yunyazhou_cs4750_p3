import 'package:flutter/material.dart';
import 'package:flutter_reward/helper/extension/string_extension.dart';
import 'package:flutter_reward/model/mission.dart';
import 'package:flutter_reward/modules/mission/mission_create.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MissionDisplay extends StatelessWidget {
  final Mission mission;

  const MissionDisplay({super.key, required this.mission});

  @override
  Widget build(BuildContext context) {
    return Align(
      child: GestureDetector(
        onTap: () {
          Get.to(() => MissionCreate(mission: mission));
        },
        child: SizedBox(
          width: 300.w,
          height: 200.h,
          child: Stack(
            children: [
              Container(
                // width: 300.w,
                // height: 200.h,
                decoration: const BoxDecoration(
                  // color: Colors.red,
                  image: DecorationImage(
                    image: AssetImage('assets/images/board.webp'),
                  ),
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                top: 100.h,
                // bottom: 40.h,
                child: Material(
                  color: Colors.transparent,
                  child: Align(
                    child: Container(
                      // color: Colors.blue,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ('NAME: ${mission.title!}').exText(
                              fontSize: 20.sp, fontWeight: FontWeight.bold),
                          ('DETAIL: ${mission.detail!}').exText(maxLines: 2),
                        ],
                      ),
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
