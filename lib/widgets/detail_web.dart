import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:masak_in/common/color.dart';
import 'package:masak_in/models/foods.dart';
import 'package:masak_in/screens/youtube.dart';
import 'package:masak_in/widgets/nutrition_item.dart';

class DetailWebPage extends StatelessWidget {
  final Foods foods;
  final Color color;

  const DetailWebPage({super.key, required this.foods, required this.color});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(backgroundColor: blueColor),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 64,
        ),
        child: Center(
          child: Container(
            margin: screenWidth <= 1200
                ? const EdgeInsets.only(top: 10)
                : const EdgeInsets.only(top: 100),
            width: screenWidth <= 1200 ? 800 : 1200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: SizedBox(
                        width: 400,
                        height: 400,
                        child: Hero(
                          tag: foods.id,
                          child: Stack(
                            alignment: AlignmentDirectional.center,
                            clipBehavior: Clip.none,
                            children: [
                              Positioned(
                                  top: 0,
                                  child: Container(
                                    height: screenWidth <= 1200 ? 300 : 400,
                                    width: screenWidth <= 1200 ? 350 : 500,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20.0),
                                      color: color,
                                    ),
                                  )),
                              Positioned(
                                top: 80,
                                child: Image.asset(
                                  foods.imageAsset,
                                  height: screenWidth <= 1200 ? 300 : 400,
                                  width: screenWidth <= 1200 ? 300 : 1200,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 32),
                    Expanded(
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Container(
                          padding: const EdgeInsets.all(24),
                          child: Column(
                            children: <Widget>[
                              Text(
                                foods.name,
                                textAlign: TextAlign.center,
                                style: GoogleFonts.inter(
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              Container(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 16.0),
                                child: Text(
                                  foods.description,
                                  textAlign: TextAlign.justify,
                                  style: GoogleFonts.inter(
                                    fontSize: 16.0,
                                  ),
                                ),
                              ),
                              Container(
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 24.0, vertical: 8.0),
                                  child: Text(
                                    "Nutritions",
                                    textAlign: TextAlign.left,
                                    style: GoogleFonts.inter(
                                      fontSize: 22.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  )),
                              screenWidth <= 1200
                                  ? Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        NutritionsItems(
                                            num: foods.calories,
                                            title: "Calories",
                                            unit: "Kcal"),
                                        NutritionsItems(
                                            num: foods.carbo,
                                            title: "Carbo",
                                            unit: "Gram"),
                                        NutritionsItems(
                                            num: foods.protein,
                                            title: "Protein",
                                            unit: "Gram"),
                                        NutritionsItems(
                                            num: foods.calcium,
                                            title: "Calcium",
                                            unit: "Gram"),
                                      ],
                                    )
                                  : Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            NutritionsItems(
                                                num: foods.calories,
                                                title: "Calories",
                                                unit: "Kcal"),
                                            NutritionsItems(
                                                num: foods.carbo,
                                                title: "Carbo",
                                                unit: "Gram"),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
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
                                    )
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
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return YoutubeScreen(query: foods.queryYT, title: foods.name,);
          }));
        },
        label: Container(
          margin: const EdgeInsets.all(50.0),
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