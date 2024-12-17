import 'package:connectivity_and_location/exports.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final PermissionController permissionController = Get.find();

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Timer(Duration(seconds: 3), () {
        permissionController.checkLocationPermission();
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'SplashScreen',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
