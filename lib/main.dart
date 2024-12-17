import 'package:connectivity_and_location/exports.dart';

//For internet connection
// final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  DependencyInjection.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }

/*  OverlayEntry? entry;

  checkInternetConnectivity() async {
    try {
      var result = await Connectivity().checkConnectivity();
      if (result == ConnectivityResult.none) {
        showNetworkOfflineOverlay();
      }
    } on PlatformException catch (e) {
      print("Error in connectivity");
      print(e.toString());
      return;
    }
    Connectivity().onConnectivityChanged.listen((result) {
      print("in main: $result");
      if (result == ConnectivityResult.none) {
        if (entry == null) {
          print("in main: none");
          showNetworkOfflineOverlay();
        }
      } else {
        print("here after main");
        if (entry != null) {
          print("here after main not null");

          hideNetworkOfflineOverlay();
          Get.to(InitialScreen());
        }
      }
    });
  }

  showNetworkOfflineOverlay() {
    entry = OverlayEntry(
      builder: (context) => Positioned(
        bottom: 0,
        left: 0,
        right: 0,
        child: Material(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 6, horizontal: 16),
            color: Colors.red,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.wifi_off,
                  color: Colors.white,
                  size: 22,
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  "You are offline",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
    final overlay = navigatorKey.currentState?.overlay;
    overlay?.insert(entry!);
  }

  hideNetworkOfflineOverlay() {
    entry?.remove();
    entry = null;
  }*/
}
