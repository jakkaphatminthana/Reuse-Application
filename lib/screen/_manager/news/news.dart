import 'package:flutte_final_project/screen/_manager/news/listNews.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Manager_NewsScreen extends StatefulWidget {
  const Manager_NewsScreen({Key? key}) : super(key: key);

  @override
  State<Manager_NewsScreen> createState() => _Manager_NewsScreenState();
}

class _Manager_NewsScreenState extends State<Manager_NewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(10, 20, 0, 10),
              child: Text(
                'บทความการขัดแยกขยะ',
                style: GoogleFonts.getFont(
                  'Roboto',
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                ),
              ),
            ),
            ListNews(
              header: "การขัดแยกขยะประเภท กระดาษ",
              subtitle:"ขยะมูลฝอยจากบ้านเรือนและสำนักงานจะมีกระดาษเป็นกองคือประกอบที่",
              images: "assets/image/t1.jpg",
              press: () {},
            ),
            const SizedBox(height: 10.0),
            ListNews(
              header: "การขัดแยกขยะประเภท พลาสติก",
              subtitle:"พลาสติกเข้ามามีต่อวิถีชีวิตประจำวันของคนไทยอย่างต่อเนื่อง ยิ่งผู้คนที่หันมาเลือก",
              images: "assets/image/t2.png",
              press: () {},
            ),
            const SizedBox(height: 10.0),
            ListNews(
              header: "การขัดแยกขยะประเภท แก้ว",
              subtitle:"ขยะทั่วไปที่เราเห็นกันอย่างชินตามักจะมีลักษณะสกปรก มีขยะล้นออกมานอก",
              images: "assets/image/t3.jpg",
              press: () {},
            ),
            const SizedBox(height: 10.0),
            ListNews(
              header: "การขัดแยกขยะประเภท IT",
              subtitle:"เป็นขยะที่แยกได้ง่าย เพราะเป็นลักษณะของเครื่องใช้ไฟฟ้าต่างๆ ที่เสียแล้ว",
              images: "assets/image/t4.jpg",
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}
