import 'package:flutter/material.dart';
import 'package:flutte_final_project/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ListProduct extends StatelessWidget {
  const ListProduct({
    Key? key,
    required this.productName,
    required this.point,
    required this.amount,
    required this.images,
    required this.press,
  }) : super(key: key);

  final String productName;
  final String point;
  final String amount;
  final String images;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
      child: Material(
        color: Colors.transparent,
        elevation: 2,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 100,
          decoration: BoxDecoration(
            color: const Color(0xFFEEEEEE),
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
                padding: const EdgeInsetsDirectional.fromSTEB(20, 10, 0, 10),
                child: Container(
                  width: 190,
                  decoration: const BoxDecoration(
                    color: Color(0xFFEEEEEE),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        productName,
                        textAlign: TextAlign.start,
                        style: GoogleFonts.getFont(
                          'Roboto',
                          color: const Color(0xFF00883C),
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'จำนวน : ',
                            textAlign: TextAlign.start,
                            style: GoogleFonts.getFont(
                              'Roboto',
                              fontWeight: FontWeight.w600,
                              fontSize: 13,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(0, 2, 0, 0),
                            child: Text(
                              amount,
                              textAlign: TextAlign.start,
                              style: GoogleFonts.getFont(
                                'Roboto',
                                fontWeight: FontWeight.normal,
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'ราคาแต้ม : ',
                            textAlign: TextAlign.start,
                            style: GoogleFonts.getFont(
                              'Roboto',
                              fontWeight: FontWeight.w600,
                              fontSize: 13,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(0, 2, 0, 0),
                            child: Text(
                              point,
                              textAlign: TextAlign.start,
                              style: GoogleFonts.getFont(
                                'Roboto',
                                fontWeight: FontWeight.normal,
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
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
