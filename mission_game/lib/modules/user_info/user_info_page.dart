import 'package:flutter/material.dart';
import 'package:flutter_reward/helper/extension/string_extension.dart';
import 'package:flutter_reward/modules/base/base_view.dart';
import 'package:flutter_reward/modules/mission/mission_entry.dart';
import 'package:flutter_reward/widgets/app_input.dart';
import 'package:flutter_reward/widgets/s_input.dart';
import 'package:flutter_reward/widgets/theme_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class UserInfoPage extends StatefulWidget {
  const UserInfoPage({super.key});

  @override
  State<UserInfoPage> createState() => _UserInfoPageState();
}

class _UserInfoPageState extends BasePageState<UserInfoPage> {
  @override
  Widget buildContent(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Row(children: [SizedBox()]),
          'What is your name?'.exText(fontSize: 24.sp),
          const SInput(
            autofocus: true,
            hintText: 'Enter your name',
          ).marginSymmetric(horizontal: 40.w),
          SizedBox(height: 50.h),
          ThemeButton(
            width: 80.w,
            height: 40.h,
            text: 'Start',
            onPressed: () {
              Get.off(() => const MissionEntry());
            },
          )
        ],
      ),
    );
  }
}
