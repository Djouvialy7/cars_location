import 'package:cars_location/Views/splashScreen.dart';
import 'package:cars_location/screens/boking.dart';
import 'package:cars_location/screens/cars_overview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(home());
}

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: ('Cars Location'),
      home: SplashScreen(),
    );
  }
}
