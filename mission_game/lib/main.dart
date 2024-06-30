import 'package:flutter/material.dart';
import 'package:flutter_reward/helper/storage/app_hive.dart';
import 'package:flutter_reward/modules/home/home_page.dart';
import 'package:flutter_reward/modules/mission/mission_controller.dart';
import 'package:flutter_reward/modules/user_info/user_info_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

late MissionController missionController;
void main() async {
  await AppHive().init();
  missionController = Get.put(MissionController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 667),
      child: GetMaterialApp(
        title: 'Flutter Reword',
        theme: ThemeData(
          textTheme: GoogleFonts.silkscreenTextTheme(
            Theme.of(context).textTheme,
          ),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrangeAccent),
          useMaterial3: true,
        ),
        home: const UserInfoPage(),
      ),
    );
  }
}
