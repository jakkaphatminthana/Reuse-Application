import 'package:flutte_final_project/screen/_manager/home/listmenu.dart';
import 'package:flutte_final_project/screen/_manager/member/member.dart';
import 'package:flutte_final_project/screen/_manager/order/order.dart';
import 'package:flutte_final_project/screen/_manager/request/request.dart';
import 'package:flutter/material.dart';
import 'package:flutte_final_project/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Manager_HomeScreen extends StatefulWidget {
  const Manager_HomeScreen({Key? key}) : super(key: key);

  @override
  State<Manager_HomeScreen> createState() => _Manager_HomeScreenState();
}

class _Manager_HomeScreenState extends State<Manager_HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              ListMenu(
                header: "Order List",
                subtitle: "รายการคำสั่งซื้อ",
                iconEZ: const FaIcon(Icons.local_grocery_store_outlined),
                colorEZ: const Color(0xFF53DA8E),
                press: () {
                  Navigator.pushNamed(context, ManagerOrderScreen.routeName);
                },
              ),
              const SizedBox(height: 10.0),
              ListMenu(
                header: "Petition List",
                subtitle: "รายการคำร้อง",
                iconEZ: const FaIcon(Icons.notes),
                colorEZ: const Color(0xFFF9DF8C),
                press: () {
                  Navigator.pushNamed(context, ManagerRequestScreen.routeName);
                },
              ),
              const SizedBox(height: 10.0),
              ListMenu(
                header: "Member",
                subtitle: "รายการสมาชิก",
                iconEZ: const FaIcon(FontAwesomeIcons.user),
                colorEZ: const Color(0xFFF9BB73),
                press: () {
                  Navigator.pushNamed(context, ManagerMemberScreen.routeName);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}


//=========================================================================================================
