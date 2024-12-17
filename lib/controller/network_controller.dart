import 'package:connectivity_and_location/exports.dart';

class NetworkController extends GetxController {
  final Connectivity _connectivity = Connectivity();

  @override
  void onInit() {
    // Updated to handle the new `onConnectivityChanged` API
    _connectivity.onConnectivityChanged.listen((results) {
      _updateConnectionStatus(results.first);
    });
    super.onInit();
  }

  void _updateConnectionStatus(ConnectivityResult result) {
    if (result == ConnectivityResult.none) {
      Get.rawSnackbar(
        messageText: Text(
          'Please Connect to the internet',
          style: TextStyle(
            fontSize: 14,
            color: Colors.white,
          ),
        ),
        isDismissible: false,
        duration: Duration(days: 1),
        backgroundColor: Colors.red[400]!,
        icon: Icon(
          Icons.wifi_off,
          color: Colors.white,
          size: 30,
        ),
        margin: EdgeInsets.zero,
        snackStyle: SnackStyle.GROUNDED,
      );
    } else {
      if(Get.isSnackbarOpen){
        Get.closeCurrentSnackbar();
      }
    }
  }
}
