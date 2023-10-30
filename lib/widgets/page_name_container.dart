import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PageNameContainer extends StatelessWidget {
  final String title;
  const PageNameContainer({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: ()=>Navigator.pop(context),
          child: const Icon(Icons.arrow_back_rounded),
        ),
        const SizedBox(width: 30),
        Container(
          height: 60,
          width: 274,
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: const Color(0xffBABABA),
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Text(
              title,
              style: GoogleFonts.roboto(
                textStyle: const TextStyle(
                  color: Color(0xff000000),
                  fontSize: 25.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
