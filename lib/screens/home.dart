import 'package:flutter/material.dart';
import '../common/font.dart';
import '../screens/about.dart';
import '../screens/favourites.dart';
import '../common/color.dart';
import '../screens/detail.dart';
import '../models/foods.dart';
import 'dart:math';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home';
  const HomeScreen({ Key? key }) : super(key: key);
  
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
            const Padding(
              padding: EdgeInsets.only(left: 16.0, bottom: 16.0, right: 16.0),
              child: ListTile(
                leading: Icon(Icons.home, color: logoColor),
                title: Text('Home', style: TextStyle(fontSize: 20.0, color: logoColor, fontWeight: FontWeight.bold)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, bottom: 16.0, right: 16.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const FavouritesScreen();
                  }));
                },
                child: const ListTile(
                  leading: Icon(Icons.favorite, color: bgColor,), 
                  title: Text('Favourites', style: TextStyle(fontSize: 20.0, color: bgColor)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, bottom: 16.0, right: 16.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
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
        centerTitle: true,
        title: Container(
          padding: const EdgeInsets.all(24.0),
          height: 90, 
          child: Image.asset('assets/images/others/logoText.png')
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: blueColor),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 700) {
            return const FoodGrid(gridCount: 2);
          } else if (constraints.maxWidth <= 1000) {
            return const FoodGrid(gridCount: 3);
          } else if (constraints.maxWidth <= 1400) {
            return const FoodGrid(gridCount: 4);
          } else {
            return const FoodGrid(gridCount: 6);
          }
        }
      ),
    );
  }
}

class FoodGrid extends StatelessWidget {
  final int gridCount;

  const FoodGrid({Key? key, required this.gridCount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.all(24.0),
      crossAxisCount: gridCount,
      crossAxisSpacing: 24,
      mainAxisSpacing: 75,
      children: foodLists.map((foods) {
        final random = Random();
        Color colors = colorList[random.nextInt(colorList.length)];
        return InkWell(
          borderRadius: const BorderRadius.all(Radius.circular(25.0)),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailScreen(foods: foods);
            }));
          },
          child: SizedBox(
            height: 500,
            child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                color: colors,
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      top: 70,
                      child: Image.asset(
                        foods.imageAsset,
                        height: 200,
                        width: 200,
                      ),
                    ),
                    Positioned(
                      top: 40,
                      child: Center(
                        child: Text(
                          foods.name,
                          style: projectTextTheme.headline5
                        ),
                      ),
                    ),
                  ],
                ),
            ),
          ),
        );
      }).toList(),
    );
  }
}