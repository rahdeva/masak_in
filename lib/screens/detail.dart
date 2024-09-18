import 'package:flutter/material.dart';
import 'package:masak_in/widgets/detail_mobile.dart';
import 'package:masak_in/widgets/detail_web.dart';
import '../models/foods.dart';

class DetailScreen extends StatelessWidget {
  static const routeName = '/detail';
  final Foods foods;
  final Color color;
  final String id;

  const DetailScreen(
      {super.key, required this.foods, required this.color, required this.id});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 1000) {
          return DetailWebPage(foods: foods, color: color);
        } else {
          return DetailMobilePage(foods: foods, color: color);
        }
      },
    );
  }
}