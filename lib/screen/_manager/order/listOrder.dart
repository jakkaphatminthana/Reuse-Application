import 'package:flutter/material.dart';
import 'package:flutte_final_project/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ListOrder extends StatelessWidget {
  const ListOrder({
    Key? key,
    required this.productName,
    required this.amount,
    required this.productImages,
    required this.userImgae,
    required this.email,
    required this.press,
  }) : super(key: key);

  final String productName;
  final String amount;
  final String email;
  final String productImages;
  final String userImgae;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Material(
        color: Colors.transparent,
        elevation: 2,
        child: Container(
          width: MediaQuery.of(context).size.width * 0.95,
          height: 90,
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
                padding: const EdgeInsetsDirectional.fromSTEB(5, 5, 0, 5),
                child: Container(
                  width: 100,
                  height: MediaQuery.of(context).size.height * 0.9,
                  decoration: BoxDecoration(
                    color: const Color(0xFFEEEEEE),
                    border: Border.all(
                      width: 1,
                    ),
                  ),
                  child: Image.asset(
                    productImages,
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(10, 5, 0, 5),
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
                        productName,
                        style: GoogleFonts.getFont(
                          'Roboto',
                          color: const Color(0xFF00883C),
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'จำนวน : ',
                            style: GoogleFonts.getFont(
                              'Roboto',
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            amount,
                            style: GoogleFonts.getFont(
                              'Roboto',
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 3, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: 25,
                              height: 25,
                              clipBehavior: Clip.antiAlias,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Image.asset(
                                userImgae,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  3, 0, 0, 0),
                              child: Text(
                                email,
                                style: GoogleFonts.getFont(
                                  'Roboto',
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(10, 5, 0, 5),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    FaIcon(
                      FontAwesomeIcons.clock,
                      color: Color(0xFFF6992C),
                      size: 24,
                    ),
                    Text(
                      'Pedding',
                      style: TextStyle(
                        color: Color(0xFFF6992C),
                        fontWeight: FontWeight.w600,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
