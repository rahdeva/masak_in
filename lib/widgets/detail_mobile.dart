import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:masak_in/common/color.dart';
import 'package:masak_in/models/foods.dart';
import 'package:masak_in/screens/youtube.dart';
import 'package:masak_in/widgets/favorite_button.dart';
import 'package:masak_in/widgets/nutrition_item.dart';

class DetailMobilePage extends StatelessWidget {
  final Foods foods;
  final Color color;

  const DetailMobilePage({super.key, required this.foods, required this.color});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: logoColor,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          height: screenWidth <= 500 ? 1000 : 800,
          decoration: BoxDecoration(
              border: Border.all(width: 1.0, color: Colors.white),
              color: bgColor,
              borderRadius: BorderRadius.circular(50)),
          margin: const EdgeInsets.only(top: 30, bottom: 60),
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
                      const FavoriteButton(),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 280,
                child: Hero(
                  tag: foods.id,
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
                          )),
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
              ),
              Container(
                  margin: const EdgeInsets.only(top: 8, bottom: 16.0, left: 24.0),
                  child: Text(
                    foods.name,
                    style: const TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Text(
                  foods.description,
                  textAlign: TextAlign.justify,
                  style: const TextStyle(fontSize: 16.0),
                ),
              ),
              Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
                  child: Text(
                    "Nutritions",
                    style: GoogleFonts.inter(
                      fontSize: 22.0,
                      fontWeight: FontWeight.w600,
                    ),
                  )),
              screenWidth <= 500
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        NutritionsItems(
                            num: foods.calories,
                            title: "Calories",
                            unit: "Kcal"),
                        NutritionsItems(
                            num: foods.carbo, title: "Carbo", unit: "Gram"),
                        NutritionsItems(
                            num: foods.protein, title: "Protein", unit: "Gram"),
                        NutritionsItems(
                            num: foods.calcium, title: "Calcium", unit: "Gram"),
                      ],
                    )
                  : Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            NutritionsItems(
                                num: foods.calories,
                                title: "Calories",
                                unit: "Kcal"),
                            NutritionsItems(
                                num: foods.carbo, title: "Carbo", unit: "Gram"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            NutritionsItems(
                                num: foods.protein,
                                title: "Protein",
                                unit: "Gram"),
                            NutritionsItems(
                                num: foods.calcium,
                                title: "Calcium",
                                unit: "Gram"),
                          ],
                        ),
                      ],
                    ),
            ],
          ),
        ),
      )),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return YoutubeScreen(query: foods.queryYT, title: foods.name,);
          }));
        },
        label: Container(
          margin: const EdgeInsets.all(24.0),
          child: Text(
            "Watch Video",
            style: GoogleFonts.inter(
              fontSize: 24.0, 
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        icon: const Icon(
          Icons.play_circle, 
          size: 24,
          color: Colors.white,
        ),
        backgroundColor: blueColor,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}