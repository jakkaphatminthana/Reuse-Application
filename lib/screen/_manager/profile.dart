
import 'package:flutte_final_project/constants.dart';
import 'package:flutte_final_project/screen/index/index.dart';
import 'package:flutte_final_project/screen/_manager/profile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:firebase_auth/firebase_auth.dart';

class ManagerProfileScreen extends StatefulWidget {
  //Location Page
  static String routeName = "/manager_Profile";

  @override
  State<ManagerProfileScreen> createState() => _ManagerProfileScreenState();
}

class _ManagerProfileScreenState extends State<ManagerProfileScreen> {
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
            icon: const FaIcon(
              FontAwesomeIcons.solidUserCircle,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () {
              Navigator.pushNamed(
                  context, ManagerProfileScreen.routeName); //Profile Page
            },
          ),
        ],
        elevation: 2,
      ),
      //--------------------------------------------------------------------------------------------
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

            //TODO : Profile Avatar
            Material(
              color: Colors.transparent,
              elevation: 2,
              shape: const CircleBorder(),
              child: Container(
                width: 130,
                height: 130,
                decoration: BoxDecoration(
                  color: const Color(0xFFEEEEEE),
                  shape: BoxShape.circle,
                  border: Border.all(
                    width: 1,
                  ),
                ),
                alignment: const AlignmentDirectional(0, 0),
                child: Container(
                  width: 120,
                  height: 120,
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    'assets/image/user.png',
                  ),
                ),
              ),
            ),

            //TODO : Username
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 15),
              child: Text(
                '{Username}',
                style: Content_Black22,
              ),
            ),

            //TODO : Detail Profile
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.82,
                height: 130,
                decoration: const BoxDecoration(
                  color: Color(0xFFEEEEEE),
                ),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text('Name : ', style: Content_Black16),
                          Text('{Yourname}', style: Content_Blue14),
                        ],
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text('Email : ', style: Content_Black16),
                            Text('{test@gmail.com}', style: Content_Blue14),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text('Phone : ', style: Content_Black16),
                            Text('{0890546456}', style: Content_Blue14),
                          ],
                        ),
                      ),

                      //TODO : แก้ไขข้อมูล
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: GestureDetector(
                          onTap: () {},
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              const Icon(
                                Icons.edit,
                                color: Color(0xFFF6992C),
                                size: 20,
                              ),
                              Text(
                                "แก้ไขโปรไฟล์",
                                style: GoogleFonts.getFont(
                                  'Roboto',
                                  color: const Color(0xFFF6992C),
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            //TODO : Button Logout
            const SizedBox(height: 50.0),
            ElevatedButton(
              child: Text("ออกจากระบบ", style: button_text),
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                fixedSize: const Size(200, 45),
                elevation: 2.0, //เงา
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              onPressed: () {
                FirebaseAuth.instance.signOut().then((value) {
                  Navigator.pushNamed(context, IndexScreen.routeName);
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
