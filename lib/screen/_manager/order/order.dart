import 'package:flutte_final_project/constants.dart';
import 'package:flutte_final_project/screen/_manager/order/listOrder.dart';
import 'package:flutte_final_project/screen/_manager/profile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:firebase_auth/firebase_auth.dart';

class ManagerOrderScreen extends StatefulWidget {
  //Location Page
  static String routeName = "/manager_order";

  @override
  State<ManagerOrderScreen> createState() => _ManagerOrderScreenState();
}

class _ManagerOrderScreenState extends State<ManagerOrderScreen> {
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

            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
              child: Text(
                'รายการแลกของรางวัล',
                textAlign: TextAlign.center,
                style: GoogleFonts.getFont(
                  'Roboto',
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
            ),

            //TODO : List order
            ListOrder(
              productName: "ถุงผ้ารักษ์โลก Green",
              amount: "1",
              productImages: "assets/image/p1.png",
              userImgae: "assets/image/user1.png",
              email: "jakeosen1@gmail.com",
              press: () {},
            ),
            const SizedBox(height: 10.0),
            ListOrder(
              productName: "ถุงผ้ารักษ์โลก Green",
              amount: "1",
              productImages: "assets/image/p1.png",
              userImgae: "assets/image/user2.png",
              email: "iopopuser@gmail.com",
              press: () {},
            ),
            const SizedBox(height: 10.0),
            ListOrder(
              productName: "เสื้อยืดรักษ์โลก",
              amount: "1",
              productImages: "assets/image/p4.jpg",
              userImgae: "assets/image/user3.png",
              email: "ocantoto555@gmail.com",
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}
