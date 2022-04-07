import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Container(height: 40, child: Image.asset('assets/images/others/logoText.png'))),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Text("Ini Body"),
    );
  }
}