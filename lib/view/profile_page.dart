import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 28, bottom: 5),
          child: Text("User Profile",
              style: GoogleFonts.poppins()
                  .copyWith(fontSize: 18, fontWeight: FontWeight.w600)),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Center(
            child: Image.asset("assets/user_image.png"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Center(
            child: Text("Jhon Doe",
                style: GoogleFonts.poppins()
                    .copyWith(fontSize: 22, fontWeight: FontWeight.w600)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 1),
          child: Center(
            child: Text("Indonesia",
                style: GoogleFonts.poppins().copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[400])),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 40, left: 28, bottom: 5),
          child: Text("Email",
              style: GoogleFonts.poppins()
                  .copyWith(fontSize: 18, fontWeight: FontWeight.w600)),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 1, left: 28, bottom: 5),
          child: Text("jhonDoe@gmail.com",
              style: GoogleFonts.poppins().copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[400])),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, left: 28, bottom: 5),
          child: Text("Phone",
              style: GoogleFonts.poppins()
                  .copyWith(fontSize: 18, fontWeight: FontWeight.w600)),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 1, left: 28, bottom: 5),
          child: Text("1234567",
              style: GoogleFonts.poppins().copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[400])),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, left: 28, bottom: 5),
          child: Text("Date of Birth",
              style: GoogleFonts.poppins()
                  .copyWith(fontSize: 18, fontWeight: FontWeight.w600)),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 1, left: 28, bottom: 5),
          child: Text("22 September 1999",
              style: GoogleFonts.poppins().copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[400])),
        ),
      ],
    );
  }
}
