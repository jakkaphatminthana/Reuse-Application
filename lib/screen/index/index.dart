import 'package:flutte_final_project/constants.dart';
import 'package:flutte_final_project/screen/login/login_page.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class IndexScreen extends StatelessWidget {
  const IndexScreen({Key? key}) : super(key: key);
  static String routeName = "/index";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            //TODO : Background App
            Image.asset(
              'assets/image/bg-green1.jpg',
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 1,
              fit: BoxFit.cover,
            ),
            Align(
              alignment: const AlignmentDirectional(0, 0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  //TODO : Head REUSE
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 100, 0, 0),
                    child: Text(
                      "REUSE",
                      textAlign: TextAlign.center,
                      style: heading_REUSE_head,
                    ),
                  ),
                  Text(
                    "เกมมขยะรีไซเคิล",
                    style: heading_REUSE_subtitle1,
                  ),

                  //TODO : ICON Reuse Body
                  Padding(
                    padding: const EdgeInsets.only(top: 80),
                    child: Image.asset(
                      "assets/image/reuse.png",
                      width: 180,
                      height: 180,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 80.0),

                  //TODO : คำอธิบายวัตถุประสงค์ของเรา
                  Text(
                    "ร่วมช่วยกันสร้างเศรษกิจหมุนเวียน",
                    style: heading_REUSE_subtitle2,
                  ),
                  Text(
                    "ในขยะรีไซเคิล",
                    style: heading_REUSE_subtitle2,
                  ),

                  const SizedBox(height: 50.0),
                  //TODO : Button START
                  ElevatedButton(
                    child: Text("START", style: button_text),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      fixedSize: const Size(200, 45),
                      side: const BorderSide(
                          width: 2.0, color: Colors.white), //ขอบ
                      elevation: 2.0, //เงา
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, LoginScreen.routeName);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
