import 'package:flutter/material.dart';
import 'package:masak_in/screens/favourites.dart';
import 'package:masak_in/screens/home.dart';
import '../common/color.dart';

class AboutScreen extends StatelessWidget {
  static const routeName = '/about';
  const AboutScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      drawer: Drawer(
        backgroundColor: blueColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            bottomRight: Radius.circular(20)
          ),
        ),
        child: ListView(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 24.0),
              height: 100,
              width: 100,
              child: Image.asset("assets/images/others/logoImages.png")
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, bottom: 16.0, right: 16.0),
              child: InkWell(
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                    return const HomeScreen();
                  }));
                },
                child: const ListTile(
                  leading: Icon(Icons.home, color: bgColor),
                  title: Text('Home', style: TextStyle(fontSize: 20.0, color: bgColor)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, bottom: 16.0, right: 16.0),
              child: InkWell(
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                    return const FavouritesScreen();
                  }));
                },
                child: const ListTile(
                  leading: Icon(Icons.favorite, color: bgColor,), 
                  title: Text('Favourites', style: TextStyle(fontSize: 20.0, color: bgColor)),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16.0, bottom: 16.0, right: 16.0),
              child: ListTile(
                leading: Icon(Icons.info, color: logoColor,),
                title: Text('About', style: TextStyle(fontSize: 20.0, color: logoColor, fontWeight: FontWeight.w600)),
              ),
            ),
          ],
        )),
      appBar: AppBar(
        titleSpacing: 2,
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: blueColor),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/others/logoText.png'),
            const SizedBox(height: 40),
            Image.asset('assets/images/others/logoImages.png'),
            const SizedBox(height: 40),
            const Text(
              "This app is made by ♥ and fun\nto learn more about Flutter Development",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 80),
            const Text("Copyright © Ngurah Deva 2022", style: TextStyle(fontSize: 16),),
          ],
        ),
      ),
    );
  }
}