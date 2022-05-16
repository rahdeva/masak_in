import 'package:flutter/material.dart';
import '../screens/introduction.dart';
import '../screens/home.dart';
import '../screens/splash.dart';
// import '../screens/detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Masak.in',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (context) => const SplashScreen(),
        IntroductionScreen.routeName: (context) => const IntroductionScreen(),
        HomeScreen.routeName: (context) => const HomeScreen(),
        // DetailScreen.routeName: (context) => const DetailScreen(id: null),
      },
    );
  }
}