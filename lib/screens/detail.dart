import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../common/color.dart';
import '../models/foods.dart';

class DetailScreen extends StatelessWidget {
  final Foods foods;
  final Color color;
  
  const DetailScreen({Key? key, required this.foods, required this.color}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 800) {
          return DetailWebPage(foods: foods);
        } else {
          return DetailMobilePage(foods: foods, color: color);
        }
      },
    );
  }
}

class DetailMobilePage extends StatelessWidget{
  final Foods foods;
  final Color color;

  const DetailMobilePage({Key? key, required this.foods, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: logoColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: 900,
            decoration: BoxDecoration(
              border: Border.all(width: 1.0, color: Colors.white),
              color: bgColor,
              borderRadius: BorderRadius.circular(50)
            ),
            margin: const EdgeInsets.only(top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: const Icon(
                            Icons.arrow_back,
                            color: blueColor,
                            size: 40,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        FavoriteButton(),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 280,
                  child: Stack(
                    alignment: AlignmentDirectional.center,
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        top: 0,
                        child: Container(
                          height: 250,
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: color,
                          ),
                        )
                      ),
                      Positioned(
                        top: 55,
                        child: Image.asset(
                          foods.imageAsset,
                          height: 250,
                          width: 250,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 8, bottom: 16.0, left: 24.0),
                  child: Text(
                    foods.name,
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 24.0),
                  child: Text(
                    foods.description,
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
                  child: Text(
                    "Nutritions",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    NutritionsItems(num: foods.calories, title: "Calories", unit: "Kcal"),
                    NutritionsItems(num: foods.carbo, title: "Carbo", unit: "Gram"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    NutritionsItems(num: foods.protein, title: "Protein", unit: "Gram"),
                    NutritionsItems(num: foods.calcium, title: "Calcium", unit: "Gram"),
                  ],
                )
                
              ],
            ),
          ),
        )
      ),
    );
  }
}

class NutritionsItems extends StatelessWidget {
  final String num;
  final String title;
  final String unit;

  const NutritionsItems({Key? key, required this.num, required this.title, required this.unit,}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final random = Random();
    Color colors = colorList[random.nextInt(colorList.length)];
    return Container(
      width: 220,
      height: 60,
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(100)),
        color: colors,
      ),
      child: Stack(
        alignment: AlignmentDirectional.centerStart,
        children: [
          Container(
            margin: const EdgeInsets.all(4.0),
            padding: const EdgeInsets.all(12.0),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0x63FFFFFF),
            ),
            child: Text(
              num, 
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w500, 
                color: Colors.white
              ),
            ),
          ),
          Positioned(
            left: 60,
            top: 12,
            child: Text(
              title,
              style: GoogleFonts.inter(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),
            ),
          ),
          Positioned(
            left: 60,
            top: 32,
            child: Text(
              unit,
              style: GoogleFonts.inter(
                fontSize: 12.0,
                fontWeight: FontWeight.w300,
                color: Colors.white
              ),
            ),
          )
        ],
      ),
    );
  }
}

class DetailWebPage extends StatefulWidget {
  final Foods foods;

  const DetailWebPage({Key? key, required this.foods}) : super(key: key);

  @override
  _DetailWebPageState createState() => _DetailWebPageState();
}

class _DetailWebPageState extends State<DetailWebPage> {
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      // appBar: kIsWeb ? null : AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 64,
        ),
        child: Center(
          child: Container(
            width: screenWidth <= 1200 ? 800 : 1200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Wisata Bandung',
                  style: TextStyle(
                    fontFamily: 'Staatliches',
                    fontSize: 32,
                  ),
                ),
                SizedBox(height: 32),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          ClipRRect(
                            child: Image.asset(widget.foods.imageAsset),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          SizedBox(height: 16),
                          Scrollbar(
                            isAlwaysShown: true,
                            controller: _scrollController,
                            child: Container(
                              height: 150,
                              padding: const EdgeInsets.only(bottom: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 32),
                    Expanded(
                      child: Card(
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Container(
                                child: Text(
                                  widget.foods.name,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontSize: 30.0,
                                    fontFamily: 'Staatliches',
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(vertical: 16.0),
                                child: Text(
                                  widget.foods.description,
                                  textAlign: TextAlign.justify,
                                  style: const TextStyle(
                                    fontSize: 16.0,
                                    fontFamily: 'Oxygen',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({Key? key}) : super(key: key);

  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}
  
class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
        size: 40,
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}