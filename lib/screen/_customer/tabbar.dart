import 'package:flutte_final_project/constants.dart';
import 'package:flutte_final_project/screen/_customer/exchange/exchange.dart';
import 'package:flutte_final_project/screen/_customer/home/home.dart';
import 'package:flutte_final_project/screen/_customer/profile.dart';
import 'package:flutte_final_project/screen/_customer/scan.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'news/news.dart';

class CustomerTabber extends StatefulWidget {
  //Location Page
  static String routeName = "/customer_home";

  @override
  State<CustomerTabber> createState() => _CustomerTabberState();
}

class _CustomerTabberState extends State<CustomerTabber> {
  //Tabbar List
  TabBar get _tabBar => const TabBar(
        tabs: [
          Tab(
              text: 'หน้าแรก',
              icon: FaIcon(FontAwesomeIcons.trashAlt, size: 30)),
          Tab(
              text: 'ข่าวสาร',
              icon: FaIcon(FontAwesomeIcons.solidNewspaper, size: 30)),
          Tab(
              text: 'แลกของรางวัล',
              icon: FaIcon(FontAwesomeIcons.exchangeAlt, size: 30)),
        ],
        labelColor: Colors.white,
        unselectedLabelColor: Color(0xFFDFDFDF),
        indicatorWeight: 3,
        indicatorColor: Colors.white,
        labelPadding: EdgeInsets.only(top: 5.0),
      );

//------------------------------------------------------------------------------------------------
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
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
                Navigator.pushNamed(context, CustomerScanSreen.routeName); //QRCOde Page
              },
            ),
            IconButton(
              icon: const FaIcon(
                FontAwesomeIcons.solidUserCircle,
                color: Colors.white,
                size: 30,
              ),
              onPressed: () {
                //Navigator.of(context).pop();
                Navigator.pushNamed(context, CustomerProfileScreen.routeName); //Profile Page
              },
            ),
          ],
          elevation: 2,

          //TODO : Tabber in Appbar
          bottom: PreferredSize(
            preferredSize: _tabBar.preferredSize,
            child: ColoredBox(
              color: const Color(0xFF15924C),
              child: Container(
                height: 75.0,
                child: _tabBar,
              ),
            ),
          ),
        ),
        //-------------------------------------------------------------------------------------------------------
        body: TabBarView(
          physics: const NeverScrollableScrollPhysics(), //ไม่ต้องเลื่อนได้
          children: [
            Customer_HomeScreen(),
            Customer_NewsScreen(),
            Customer_ExchangeScreen(),
          ],
        ),
      ),
    );
  }
}
