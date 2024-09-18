import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:masak_in/common/color.dart';

class NutritionsItems extends StatelessWidget {
  final String num;
  final String title;
  final String unit;

  const NutritionsItems({
    super.key,
    required this.num,
    required this.title,
    required this.unit,
  });

  @override
  Widget build(BuildContext context) {
    final random = Random();
    Color colors = colorList[random.nextInt(colorList.length)];
    return Container(
      width: 220,
      height: 60,
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(100)),
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
                  fontWeight: FontWeight.w500, color: Colors.white),
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
                  color: Colors.white),
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
                  color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}