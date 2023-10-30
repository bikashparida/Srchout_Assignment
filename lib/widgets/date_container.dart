import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DateContainer extends StatelessWidget {
  final String dateName;
  final String date;
  const DateContainer({super.key, required this.dateName, required this.date});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xffE5E5E5),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 35, right: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: ,
              children: [
                Text(
                  dateName,
                  style: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                      color: Color(0xff8C7E7E),
                      fontSize: 20.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Text(
                  date,
                  style: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                      color: Color(0xff000000),
                      fontSize: 20.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
              width: 32.04,
              child: Image.asset('images/img.png'),
            ),
          ],
        ),
      ),
    );
  }
}
