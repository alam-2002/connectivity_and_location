import 'package:connectivity_and_location/exports.dart';

class InitialScreen extends StatelessWidget {
  InitialScreen({super.key});

  final PermissionController permissionController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Location Permission'),
        centerTitle: true,
      ),
      body: Obx(
        () => Center(
          child: permissionController.isPermissionDenied.value
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Location permission is required to proceed.",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        permissionController.requestLocationPermission();
                      },
                      child: Text('Allow Permission'),
                    ),
                  ],
                )
              : ElevatedButton(
                  onPressed: () {
                    permissionController.requestLocationPermission();
                  },
                  child: Text('Request Location Permission'),
                ),
        ),
      ),
    );
  }
}
