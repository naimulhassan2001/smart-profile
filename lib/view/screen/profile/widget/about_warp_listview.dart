import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WarpListView extends StatelessWidget {
  WarpListView({super.key});

  List list = [
    'MBBS',
    'MCPS',
    'FCPS(BD)',
    'FCPS(PAK)',
    'MRCP(UK)',
    'FRCP(Edin)',
  ];

  @override
  Widget build(BuildContext context) {
    return
      Wrap(
         spacing: 6.0,
         // runSpacing: 6.0,

        children: list.map((item) {
          return Chip(
              color: MaterialStateProperty.all(const Color(0xFFFAFAFA)),
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 1, color: Color(0xFFEAEAEA)),
                borderRadius: BorderRadius.circular(80),
              ),
              label: Text(item,
                  style: GoogleFonts.openSans(
                      color: const Color(0xFF3B3B3B),
                      fontSize: 13,
                      fontWeight: FontWeight.w500)));
        }).toList(),
      );
  }
}



