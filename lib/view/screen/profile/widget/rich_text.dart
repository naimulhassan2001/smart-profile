import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RichTextWidget extends StatelessWidget {
  const RichTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                  text:
                      'Dr. Gumoh Brian jon is a Urology Surgeon in Pegion  Medical Collage Hospital and is affiliated with the multiple hospitals in the area.... ',
                  style: GoogleFonts.openSans(
                    color: const Color(0xFF8D9094),
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  )),
              TextSpan(
                  text: 'Read more',
                  style: GoogleFonts.openSans(
                      color: const Color(0xFF3C3D3F),
                      fontWeight: FontWeight.w400,
                      fontSize: 15)),
            ],
          ),
        )
      ],
    );
  }
}
