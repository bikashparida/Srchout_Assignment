import 'package:bikeapp/screens/payment_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RentContainer extends StatelessWidget {
  const RentContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => const PaymentPage())),
      child: Container(
        height: 63,
        width: 200,
        decoration: BoxDecoration(
          color: const Color(0xff000000),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Text(
              'Rent',
              style: GoogleFonts.roboto(
                textStyle: const TextStyle(
                  color: Color(0xffFFFFFF),
                  fontSize: 25.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '1499/',
                  style: GoogleFonts.risque(
                    textStyle: const TextStyle(
                      color: Color(0xffFFFFFF),
                      fontSize: 18.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Text(
                  'per day',
                  style: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                      color: Color(0xffFFFFFF),
                      fontSize: 16.0,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
