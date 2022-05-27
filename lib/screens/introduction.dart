import 'package:flutter/material.dart';
import '../common/color.dart';
import '../screens/home.dart';

class IntroductionScreen extends StatefulWidget {
  static const routeName = '/onboarding';
  const IntroductionScreen({ Key? key }) : super(key: key);

  @override
  State<IntroductionScreen> createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreen> {
  final controller = PageController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

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
                      primary: Colors.orange,
                      onPrimary: Colors.white,
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
