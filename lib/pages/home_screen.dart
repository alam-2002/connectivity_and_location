import 'package:connectivity_and_location/exports.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Welcome to Home Screen!',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
