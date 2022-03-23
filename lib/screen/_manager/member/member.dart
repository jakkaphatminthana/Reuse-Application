import 'package:flutte_final_project/constants.dart';
import 'package:flutte_final_project/screen/_manager/member/listMember.dart';
import 'package:flutte_final_project/screen/_manager/profile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:firebase_auth/firebase_auth.dart';

class ManagerMemberScreen extends StatefulWidget {
  //Location Page
  static String routeName = "/manager_member";

  @override
  State<ManagerMemberScreen> createState() => _ManagerMemberScreenState();
}

class _ManagerMemberScreenState extends State<ManagerMemberScreen> {
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

            //TODO : รายการสมาชิก
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
              child: Text(
                'สมาชิกในระบบ',
                style: GoogleFonts.getFont(
                  'Roboto',
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
            ),

            Material(
              color: Colors.transparent,
              elevation: 1,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 30,
                decoration: BoxDecoration(
                  color: const Color(0xFFF9DF8C),
                  border: Border.all(
                    width: 1,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'สมาชิก',
                        style: GoogleFonts.getFont(
                          'Roboto',
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        'สถานะ',
                        style: GoogleFonts.getFont(
                          'Roboto',
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            //TODO : Database List Member
            ListMember(
              userName: "Ryleigh Dierk",
              userEmail: "Ryleigh123@gmail.com",
              role: "สมาชิกทั่วไป",
              images: "assets/image/user1.png",
              press: () {},
            ),
            const SizedBox(height: 5.0),
            ListMember(
              userName: "Juetzalli Alphege ",
              userEmail: "lnwzaeqe@gmail.com",
              role: "สมาชิกทั่วไป",
              images: "assets/image/user2.png",
              press: () {},
            ),
            const SizedBox(height: 5.0),
            ListMember(
              userName: "Dorean Saniyya",
              userEmail: "haoilng8@gmail.com",
              role: "สมาชิกทั่วไป",
              images: "assets/image/user3.png",
              press: () {},
            ),
            const SizedBox(height: 5.0),
            ListMember(
              userName: "Khaliq Dragana",
              userEmail: "Khaliq@gmail.com",
              role: "สมาชิกทั่วไป",
              images: "assets/image/user4.png",
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}
