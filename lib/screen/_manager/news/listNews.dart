import 'package:flutter/material.dart';
import 'package:flutte_final_project/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ListNews extends StatelessWidget {
  const ListNews({
    Key? key,
    required this.header,
    required this.subtitle,
    required this.images,
    required this.press,
  }) : super(key: key);

  final String header;
  final String subtitle;
  final String images;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
      child: Material(
        color: Colors.transparent,
        elevation: 2,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 100,
          decoration: BoxDecoration(
            color: Color(0xFFEEEEEE),
            border: Border.all(
              width: 1,
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                child: Image.asset(
                  images,
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(10, 10, 0, 10),
                child: Container(
                  width: 200,
                  decoration: BoxDecoration(
                    color: Color(0xFFEEEEEE),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        header,
                        textAlign: TextAlign.start,
                        style: GoogleFonts.getFont(
                          'Roboto',
                          color: Color(0xFF00883C),
                          fontWeight: FontWeight.w600,
                          fontSize: 13,
                        ),
                      ),
                      Text(
                        subtitle,
                        textAlign: TextAlign.start,
                        style: GoogleFonts.getFont(
                          'Roboto',
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                child: FaIcon(
                  FontAwesomeIcons.solidEdit,
                  color: Color(0xFF00883C),
                  size: 25,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
