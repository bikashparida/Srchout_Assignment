import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentItemsWidget extends StatelessWidget {
  final String item;
  final String value;
  const PaymentItemsWidget(
      {super.key, required this.item, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          item,
          style: GoogleFonts.roboto(
            textStyle: const TextStyle(
              color: Color(0xff000000),
              fontSize: 18.0,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
        Text(
          value,
          style: GoogleFonts.roboto(
            textStyle: const TextStyle(
              color: Color(0xff000000),
              fontSize: 18.0,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
      ],
    );
  }
}
