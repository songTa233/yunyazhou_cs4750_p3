import 'package:flutter_reward/helper/storage/app_hive.dart';
import 'package:flutter_reward/model/mission.dart';
import 'package:get/get.dart';

class MissionController extends GetxController {

  final missions = <Mission>[].obs;

  @override
  void onInit() {
    // var localeMissions = AppHive().get(AppHiveKey.localeMissions);
    // if (localeMissions != null) {
    //   missions.value = localeMissions.obs;
    // }
    super.onInit();
  }

  void createMission(Mission mission) {
    missions.add(mission);
  }

  @override
  void onClose() {
    // AppHive().put(AppHiveKey.localeMissions, missions.value);
    super.onClose();
  }
}