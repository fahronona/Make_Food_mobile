import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget searchField(
    {String hintTex = "-",
    Color fillcolor = Colors.white,
    Color iconColors = Colors.white,
    Color textColor = Colors.green,
    Color hintColor = Colors.grey}) {
  return Container(
    color: Colors.transparent,
    // width: 325,
    height: 48,
    child: TextField(
      style: GoogleFonts.poppins().copyWith(fontSize: 16, color: textColor),
      decoration: InputDecoration(
          contentPadding: EdgeInsets.zero,
          hintText: hintTex,
          hintStyle:
              GoogleFonts.poppins().copyWith(fontSize: 16, color: hintColor),
          fillColor: fillcolor,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: const BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
          prefixIcon: Icon(Icons.search, color: iconColors)),
    ),
  );
}
