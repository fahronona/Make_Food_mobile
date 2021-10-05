import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:making_food/view/bottom_nav_bar.dart';

class BannerScreen extends StatelessWidget {
  const BannerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            right: false,
            bottom: false,
            child: Stack(
              children: [
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Image.asset(
                      "assets/gambar_banner.png",
                    )),
                Padding(
                  padding: const EdgeInsets.all(0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          padding: const EdgeInsets.only(top: 48, left: 32),
                          // width: 164,
                          // height: 44,
                          child: Image.asset(
                            "assets/logo_banner.png",
                            width: 164,
                            height: 44,
                          )),
                      Padding(
                        padding: const EdgeInsets.only(top: 21, left: 32),
                        child: Text(
                          "Buat Makanan\nFavorit mu Sekarang",
                          style: GoogleFonts.poppins().copyWith(
                              fontSize: 28, fontWeight: FontWeight.w700),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 2, left: 32),
                        child: Text(
                          "Resep Makanan favorit mu kini\ndalam genggaman ",
                          style: GoogleFonts.poppins().copyWith(
                              fontSize: 18, fontWeight: FontWeight.normal),
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(top: 79, left: 32),
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  fixedSize: const Size(150, 48),
                                  primary: const Color(0xff4CCB41)),
                              onPressed: () {
                                Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const BottomNavBar()),
                                    (Route<dynamic> route) => false);
                              },
                              child: Text("Make Now",
                                  style: GoogleFonts.poppins().copyWith(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600))))
                    ],
                  ),
                )
              ],
            )));
  }
}
