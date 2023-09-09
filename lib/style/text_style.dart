import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
TextStyle headingPage(){
  return GoogleFonts.poppins(
    fontWeight: FontWeight.w500, fontSize: 25
  );
}
TextStyle appBarStyle(){
  return const TextStyle(
    color: Colors.black, fontWeight: FontWeight.w500
  );
}
TextStyle contentInfo(){
  return const TextStyle(
    color: Colors.black, 
    fontSize: 20
  );
}