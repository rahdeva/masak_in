import 'package:flutter/material.dart';
import '../common/color.dart';
import '../screens/home.dart';

class IntroductionScreen extends StatelessWidget {
  static const routeName = '/onboarding';

  const IntroductionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/others/textIntroScreen.png'),
            const SizedBox(height: 40),
            Image.asset('assets/images/others/imageIntroScreen.png'),
            const SizedBox(height: 40),
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white, 
                      backgroundColor: Colors.orange,
                      shape: const StadiumBorder()),
                  onPressed: () => Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (BuildContext context) => const HomeScreen()
                    )
                  ),
                  child: const Text(
                    "Get Started",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
