import 'package:flutter/material.dart';
import 'package:masak_in/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyShop',
      theme: ThemeData(
        // primarySwatch: Color(0xffEDF8F2),
        // fontFamily: 'Lato',
      ),
      home: HomeScreen(),
      // routes: {
      //   ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
      //   CartScreen.routeName: (ctx) => const CartScreen(),
      //   UserProductsScreen.routeName: (ctx) => UserProductsScreen(),
      //   EditProductScreen.routeName: (ctx) => EditProductScreen(),
      // }
    );
  }
}
