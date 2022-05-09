import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: bgColor,
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/others/logoText.png'),
            const SizedBox(height: 40),
            Image.asset('assets/images/others/logoImages.png')
          ],
        ),
      ),
    );
  }
}