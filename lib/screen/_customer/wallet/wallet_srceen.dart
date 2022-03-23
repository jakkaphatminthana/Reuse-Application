import 'package:flutte_final_project/constants.dart';
import 'package:flutte_final_project/screen/_customer/profile.dart';
import 'package:flutte_final_project/screen/_customer/scan.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomerWalletScreen extends StatefulWidget {
  //Location Page
  static String routeName = "/customer_Wallet";

  @override
  State<CustomerWalletScreen> createState() => _CustomerWalletScreenState();
}

class _CustomerWalletScreenState extends State<CustomerWalletScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF00883C),
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: const EdgeInsets.all(10),
          child: Image.asset(
            "assets/image/reuse.png",
            width: 100.0,
            height: 100.0,
            fit: BoxFit.cover,
          ),
        ),
        title: Text(
          "REUSE",
          style: AppberText_white,
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.qr_code,
              color: Colors.white,
              size: 35,
            ),
            onPressed: () {
              Navigator.pushNamed(
                  context, CustomerScanSreen.routeName); //QRCOde Page
            },
          ),
          IconButton(
            icon: const FaIcon(
              FontAwesomeIcons.solidUserCircle,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () {
              Navigator.pushNamed(
                  context, CustomerProfileScreen.routeName); //Profile Page
            },
          ),
        ],
        elevation: 2,
      ),
      //------------------------------------------------------------------------------------------------------------
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.keyboard_arrow_left,
                      color: Colors.black,
                      size: 25,
                    ),
                  ),
                  Text("BackPage", style: Content_Black1),
                ],
              ),
            ),

            //TODO : Wallet
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Material(
                color: Colors.transparent,
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.85,
                  height: 270,
                  decoration: BoxDecoration(
                    color: const Color(0xFFEEEEEE),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      width: 1,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 100,
                        decoration: const BoxDecoration(
                          color: Color(0xFFEEEEEE),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Image.asset(
                                'assets/image/coin.png',
                                width: 60,
                                height: 60,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text(
                              "MyWallet\nแต้มสะสมของฉัน",
                              style: Content_Black1,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 60.0),
                              child: Text(
                                '1000',
                                style: Content_Green1,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        height: 2,
                        thickness: 2,
                        indent: 20,
                        endIndent: 20,
                        color: Colors.black,
                      ),

                      //TODO : ได้แต้มจากอะไรบ้าง
                      Align(
                        alignment: const AlignmentDirectional(-0.85, 0),
                        child: Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                          child: Text(
                            'ได้รับจาก',
                            style: GoogleFonts.getFont(
                              'Roboto',
                              decoration: TextDecoration.underline,
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(18, 5, 18, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              'ขยะรีไซเคิล : ',
                              style: GoogleFonts.getFont(
                                'Roboto',
                                color: const Color(0xFF807777),
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              '1000',
                              style: GoogleFonts.getFont(
                                'Roboto',
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(18, 5, 18, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              'อ่านบทความ : ',
                              style: GoogleFonts.getFont(
                                'Roboto',
                                color: const Color(0xFF807777),
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              '500',
                              style: GoogleFonts.getFont(
                                'Roboto',
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text("แลกของรางวัล", style: button_text2),
                          style: ElevatedButton.styleFrom(
                            primary: const Color(0xFF3DAA6D),
                            fixedSize: const Size(180, 35),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            //TODO : Histrory
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
              child: Text(
                'History',
                style: GoogleFonts.getFont(
                  'Roboto',
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 5, 0, 5),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.85,
                    height: 30,
                    decoration: BoxDecoration(
                      color: const Color(0xFFEEEEEE),
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(0),
                        bottomRight: Radius.circular(0),
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(5, 2, 5, 2),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'รายการ',
                            style: Content_Black1,
                          ),
                          Text(
                            'Point',
                            style: Content_Black1,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(25, 0, 25, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'รีไซเคิลแบบคลิก',
                        style: Content_Black14,
                      ),
                      Text(
                        '10',
                        style: Content_Black14,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
