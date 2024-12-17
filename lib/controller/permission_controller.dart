import 'package:connectivity_and_location/exports.dart';

class PermissionController extends GetxController {
  var isPermissionDenied = false.obs;

  Future<void> requestLocationPermission() async {
    var status = await Permission.location.request();

    if (status.isGranted) {
      // If permission is granted, navigate to Home Screen
      // checkLocationPermission();
      Get.offAll(() => HomeScreen());
    } else if (status.isDenied) {
      // If permission is denied, show a button to allow permission
      isPermissionDenied.value = true;
      // checkLocationPermission();
    } else if (status.isPermanentlyDenied) {
      // Open app settings if permission is permanently denied
      // isPermissionDenied.value = true;
      await openAppSettings();
    }
  }

  Future<void> checkLocationPermission() async {
    PermissionStatus status = await Permission.location.status;

    if (status.isGranted) {
      Get.offAll(() => HomeScreen());
    } else if (status.isDenied) {
      isPermissionDenied.value = true;
      Get.offAll(() => InitialScreen());
    } else if (status.isPermanentlyDenied) {
      Get.rawSnackbar(
        messageText: Text(
          'Please Allow Location Permission',
          style: TextStyle(
            fontSize: 14,
            color: Colors.white,
          ),
        ),
        isDismissible: false,
        duration: Duration(seconds: 3),
        backgroundColor: Colors.red[400]!,
        icon: Icon(
          Icons.location_off,
          color: Colors.red,
          size: 30,
        ),
        margin: EdgeInsets.zero,
        snackStyle: SnackStyle.GROUNDED,
      );
      Timer(Duration(seconds: 3), () async {
        await openAppSettings();
      });
    }
  }
}
