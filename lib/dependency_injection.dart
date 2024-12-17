import 'package:connectivity_and_location/exports.dart';

class DependencyInjection {
  static void init() {
    Get.put<NetworkController>(NetworkController(), permanent: true);
    Get.put<PermissionController>(PermissionController());
  }
}
