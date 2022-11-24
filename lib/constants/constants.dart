import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color primary = Color.fromARGB(255, 3, 159, 250);
Color white = Colors.white;
Color cool = Color.fromARGB(77, 81, 81, 115);
LinearGradient mid = const LinearGradient(
    colors: [Color.fromARGB(255, 0, 171, 233), Color.fromARGB(255, 0, 144, 246)]);

final kTitle = GoogleFonts.poppins(
    textStyle: const TextStyle(
      letterSpacing: 2,
      fontSize: 27, fontWeight: FontWeight.w600));

final kWhyte = GoogleFonts.poppins(
  textStyle: const TextStyle(
    letterSpacing: 3,
    fontSize: 16,
    color: Colors.white,
  )
);

final kWhyteReg = GoogleFonts.poppins(
  textStyle: const TextStyle(
    fontSize: 12,
    color: Colors.white,
  )
);

final kGrey = GoogleFonts.poppins(
  textStyle: const TextStyle(
    letterSpacing: 3,
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: Colors.grey,
  )
);

final kGreyReg = GoogleFonts.poppins(
  textStyle: const TextStyle(
    fontSize: 15,
    color: Colors.grey,
  )
);
final kBlac = GoogleFonts.poppins(
  textStyle: const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: Colors.black,
  )
);
final kReg = GoogleFonts.poppins(
  textStyle: const TextStyle(
    fontSize: 18,
  )
);
