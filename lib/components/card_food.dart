import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget cardFood(Function() onTap,
    {String urlImage = "-",
    String title = "-",
    String area = "-",
    String category = "-"}) {
  return Padding(
    padding: const EdgeInsets.only(top: 20, left: 28),
    child: InkWell(
      onTap: onTap,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 95.0,
            height: 95.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(urlImage)),
              borderRadius: const BorderRadius.all(Radius.circular(15.0)),
              color: Colors.grey[100],
            ),
          ),
          const SizedBox(width: 22),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 200,
                  child: Flexible(
                    child: Text(title,
                        style: GoogleFonts.poppins().copyWith(
                            fontSize: 18, fontWeight: FontWeight.w800)),
                  ),
                ),
                const SizedBox(height: 4),
                Text(area,
                    style: GoogleFonts.poppins()
                        .copyWith(fontSize: 16, fontWeight: FontWeight.w500)),
                const SizedBox(height: 4),
                Text(category,
                    style: GoogleFonts.poppins().copyWith(color: Colors.green)),
              ],
            ),
          )
        ],
      ),
    ),
  );
}
