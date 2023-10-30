import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BikeNameWidget extends StatelessWidget {
  final String name1;
  final String name2;
  const BikeNameWidget({super.key, required this.name1, required this.name2});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name1,
          style: GoogleFonts.robotoSlab(
            textStyle: const TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.w400,
              color: Color(0xff000000),
            ),
          ),
        ),
        Text(
          name2,
          style: GoogleFonts.roboto(
            textStyle: const TextStyle(
              fontSize: 21.0,
              fontWeight: FontWeight.w700,
              color: Color(0xff000000),
            ),
          ),
        ),
      ],
    );
  }
}
