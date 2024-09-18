import 'dart:math';

import 'package:flutter/material.dart';
import 'package:masak_in/common/color.dart';
import 'package:masak_in/common/font.dart';
import 'package:masak_in/models/foods.dart';
import 'package:masak_in/screens/detail.dart';

class FoodGrid extends StatefulWidget {
  final int gridCount;

  const FoodGrid({super.key, required this.gridCount});

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
                                    textAlign: TextAlign.center,
                                    style: projectTextTheme.titleLarge!.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: bgColor
                                    )
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