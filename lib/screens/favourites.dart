import 'package:flutter/material.dart';
import '../common/color.dart';
import '../screens/about.dart';
import '../screens/home.dart';

class FavouritesScreen extends StatelessWidget {
  static const routeName = '/favourites';
  const FavouritesScreen({ Key? key }) : super(key: key);

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
            const Padding(
              padding: EdgeInsets.only(left: 16.0, bottom: 16.0, right: 16.0),
              child: ListTile(
                leading: Icon(Icons.favorite, color: logoColor,), 
                title: Text('Favourites', style: TextStyle(fontSize: 20.0, color: logoColor, fontWeight: FontWeight.w600)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, bottom: 16.0, right: 16.0),
              child: InkWell(
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                    return const AboutScreen();
                  }));
                },
                child: const ListTile(
                  leading: Icon(Icons.info, color: bgColor,),
                  title: Text('About', style: TextStyle(fontSize: 20.0, color: bgColor)),
                ),
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
          children: const [
            Icon(Icons.developer_mode, size: 200,),
            SizedBox(height: 40),
            Text(
              "Sorry, This Features is on Development",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 32),
            ),
          ],
        ),
      ),
    );
  }
}