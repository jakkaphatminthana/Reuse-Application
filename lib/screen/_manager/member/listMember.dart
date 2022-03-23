import 'package:flutter/material.dart';
import 'package:flutte_final_project/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ListMember extends StatelessWidget {
  const ListMember({
    Key? key,
    required this.userName,
    required this.userEmail,
    required this.role,
    required this.images,
    required this.press,
  }) : super(key: key);

  final String userName;
  final String userEmail;
  final String role;
  final String images;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 60,
      decoration: const BoxDecoration(
        color: Color(0xFFEEEEEE),
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 10, 0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: const Color(0xFFEEEEEE),
                shape: BoxShape.circle,
                border: Border.all(
                  width: 1,
                ),
              ),
              child: Container(
                width: 40,
                height: 40,
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  images,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
              child: Container(
                width: 180,
                height: 100,
                decoration: const BoxDecoration(
                  color: Color(0xFFEEEEEE),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      userName,
                      style: GoogleFonts.getFont(
                        'Roboto',
                        fontWeight: FontWeight.w600,
                        color: Colors.green,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      userEmail,
                      style: GoogleFonts.getFont(
                        'Roboto',
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Text(
              role,
              style: GoogleFonts.getFont(
                'Roboto',
                fontWeight: FontWeight.w600,
              ),
            ),
            const Icon(
              Icons.arrow_forward_ios,
              color: Colors.black,
              size: 24,
            ),
          ],
        ),
      ),
    );
  }
}
