import 'package:flutte_final_project/constants.dart';
import 'package:flutte_final_project/screen/_manager/exchange/listProduct.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Manager_ExchangeScreen extends StatefulWidget {
  const Manager_ExchangeScreen({Key? key}) : super(key: key);

  @override
  State<Manager_ExchangeScreen> createState() => _Manager_ExchangeScreenState();
}

class _Manager_ExchangeScreenState extends State<Manager_ExchangeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: const AlignmentDirectional(0, 0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(10, 20, 0, 10),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("เพิ่มรายการสินค้า", style: button_text),
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xFF00883C),
                    fixedSize: const Size(250, 40),
                    elevation: 1.0,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 10, 0, 10),
              child: Text(
                'รายการสินค้า',
                style: GoogleFonts.getFont(
                  'Roboto',
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
            ),
            ListProduct(
              productName: "แก้วเยติ แก้วเก็บความเย็น",
              point: "1200",
              amount: "35",
              images: "assets/image/p2.png",
              press: () {},
            ),
            const SizedBox(height: 5.0),
            ListProduct(
              productName: "ถุงผ้ารักษ์โลก Green",
              point: "850",
              amount: "41",
              images: "assets/image/p1.png",
              press: () {},
            ),
            const SizedBox(height: 5.0),
            ListProduct(
              productName: "แผ่นรองเมาส์ สีดำ",
              point: "980",
              amount: "23",
              images: "assets/image/p3.jpg",
              press: () {},
            ),
            const SizedBox(height: 5.0),
            ListProduct(
              productName: "เสื้อยืดรักษ์โลก Love Eath",
              point: "1150",
              amount: "54",
              images: "assets/image/p4.jpg",
              press: () {},
            ),
            const SizedBox(height: 5.0),
          ],
        ),
      ),
    );
  }
}
