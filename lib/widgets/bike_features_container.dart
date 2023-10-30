import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BikeFeaturesContainer extends StatelessWidget {
  final String name;
  final String data;
  const BikeFeaturesContainer(
      {super.key, required this.name, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 63,
      width: 136,
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: const Color(0xffBABABA),
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 7),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              name,
              style: GoogleFonts.roboto(
                textStyle: const TextStyle(
                  color: Color(0xff8C7E7E),
                  fontSize: 18.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Text(
              data,
              style: GoogleFonts.roboto(
                textStyle: const TextStyle(
                  color: Color(0xff000000),
                  fontSize: 18.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
