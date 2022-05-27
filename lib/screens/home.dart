import 'package:flutter/material.dart';
import 'package:masak_in/common/color.dart';
import '../screens/detail.dart';
import '../models/foods.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home';
  const HomeScreen({ Key? key }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.blue,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            bottomRight: Radius.circular(20)
          ),
        ),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 24.0),
              height: 100,
              width: 100,
              child: Image.asset("assets/images/others/logoImages.png")
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: ListTile(
                leading: Icon(Icons.message),
                title: Text('Messages'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Profile', style: TextStyle(fontSize: 16.0),),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
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
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 850) {
            return FoodGrid(gridCount: 2);
          } else if (constraints.maxWidth <= 1250) {
            return FoodGrid(gridCount: 4);
          } else {
            return FoodGrid(gridCount: 6);
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
        return InkWell(
          borderRadius: const BorderRadius.all(Radius.circular(25.0)),
          onTap: () {
            // Navigator.push(context, MaterialPageRoute(builder: (context) {
            //   return DetailScreen(foods: foods);
            // }));
          },
          child: SizedBox(
            height: 500,
            child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                color: Colors.amber,
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
                          style: const TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
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