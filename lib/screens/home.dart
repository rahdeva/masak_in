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
          physics: const NeverScrollableScrollPhysics(),
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
                title: Text('Home', style: TextStyle(fontSize: 20.0, color: logoColor, fontWeight: FontWeight.w600)),
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

class FoodGrid extends StatefulWidget {
  final int gridCount;

  const FoodGrid({Key? key, required this.gridCount}) : super(key: key);

  @override
  State<FoodGrid> createState() => _FoodGridState();
}

class _FoodGridState extends State<FoodGrid> {
  List<Foods> _items = [];
  List<Foods> _foundItems = [];

  void getAllData(){
    setState(() {
      _items = foodLists;
      _foundItems = _items;
    });
  }

  void _runFilter(String enteredKeyword) {
    List<Foods> results = [];
    if (enteredKeyword.isEmpty) {
      results = _items;
    } else {
      results = _items.where(
        (foods) => foods.name.toLowerCase().contains(enteredKeyword.toLowerCase())
      ).toList();
    }
    
    setState(() {
      _foundItems = results;
    });
  }

  @override
  void initState() {
    if(_items.isEmpty) getAllData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(left: 24.0, right: 24.0, bottom: 16.0),
          child: TextField(
            onChanged: (value) => _runFilter(value),
            decoration: const InputDecoration(
              labelText: "Search",
              hintText: "Search",
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(25.0))
              )
            ),
          ),
        ),
        _foundItems.isNotEmpty
          ? Expanded(
            child: GridView.count(
              padding: const EdgeInsets.all(24.0),
              crossAxisCount: widget.gridCount,
              crossAxisSpacing: 24,
              mainAxisSpacing: 75,
              children: _foundItems.map((foods) {
                final random = Random();
                Color colors = colorList[random.nextInt(colorList.length)];
                return InkWell(
                  borderRadius: const BorderRadius.all(Radius.circular(25.0)),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return DetailScreen(foods: foods, color: colors, id: foods.id,);
                    }));
                  },
                  child: SizedBox(
                    height: 500,
                    child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        color: colors,
                        child: Hero(
                          tag: foods.id,
                          child: Stack(
                            alignment: AlignmentDirectional.center,
                            clipBehavior: Clip.none,
                            children: [
                              Positioned(
                                top: 60,
                                child: Image.asset(
                                  foods.imageAsset,
                                  height: screenWidth <= 500 ? 150 : 200,
                                  width: screenWidth <= 500 ? 150 : 200,
                                ),
                              ),
                              Positioned(
                                top: 40,
                                child: Center(
                                  child: Text(
                                    foods.name,
                                    style: projectTextTheme.headlineSmall
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                    ),
                  ),
                );
              }).toList(),
            ),
          )
        : const Center(
          child: Column(
            children: [
              Icon(Icons.search_off, size: 100,),
              Text('No results found',style: TextStyle(fontSize: 24)),
            ],
          ),
        ),
      ],
    );
  }
}