import 'package:flutte_final_project/screen/_manager/exchange/exchange.dart';
import 'package:flutte_final_project/screen/_manager/home/home.dart';
import 'package:flutte_final_project/screen/_manager/news/news.dart';
import 'package:flutte_final_project/screen/_manager/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutte_final_project/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ManagerTabbar extends StatefulWidget {
  //Location Page
  static String routeName = "/manager_home";

  @override
  State<ManagerTabbar> createState() => _ManagerTabbarState();
}

class _ManagerTabbarState extends State<ManagerTabbar> {
  //Tabbar List
  TabBar get _tabBar => const TabBar(
        tabs: [
          Tab(
              text: 'Dashboard',
              icon: Icon(Icons.speed, size: 30)),
          Tab(
              text: 'บทความ',
              icon: Icon(Icons.article, size: 30)),
          Tab(
              text: 'แลกของรางวัล',
              icon: Icon(Icons.swap_horizontal_circle, size: 30)),
        ],
        labelColor: Colors.white,
        unselectedLabelColor: Color(0xFFDFDFDF),
        indicatorWeight: 3,
        indicatorColor: Colors.white,
        labelPadding: EdgeInsets.only(top: 5.0),
      );

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
              icon: const FaIcon(
                FontAwesomeIcons.solidUserCircle,
                color: Colors.white,
                size: 30,
              ),
              onPressed: () {
                Navigator.pushNamed(context, ManagerProfileScreen.routeName); //Profile Page
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
        body: const TabBarView(
          physics: NeverScrollableScrollPhysics(), //ไม่ต้องเลื่อนได้
          children: [
            Manager_HomeScreen(),
            Manager_NewsScreen(),
            Manager_ExchangeScreen(),
          ],
        ),
      ),
    );
  }
}
