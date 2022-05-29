import 'package:flutter/material.dart';
import 'package:masak_in/models/foods.dart';
import 'package:masak_in/screens/about.dart';
import 'package:masak_in/screens/favourites.dart';
import '../screens/introduction.dart';
import '../screens/home.dart';
import '../screens/splash.dart';
import '../screens/detail.dart';

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
        FavouritesScreen.routeName: (context) => const FavouritesScreen(),
        AboutScreen.routeName: (context) => const AboutScreen(),
        DetailScreen.routeName: (context) => DetailScreen(
          id: ModalRoute.of(context)?.settings.arguments as String,
          foods: ModalRoute.of(context)?.settings.arguments as Foods,
          color: ModalRoute.of(context)?.settings.arguments as Color,
        ),
        // YoutubeScreen.routeName: (context) => const YoutubeScreen(),
      },
    );
  }
}