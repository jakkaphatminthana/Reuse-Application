import 'package:flutte_final_project/constants.dart';
import 'package:flutte_final_project/screen/_customer/home/cardNews.dart';
import 'package:flutter/material.dart';

class Customer_NewsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              //TODO : Newspapers
              Align(
                alignment: const AlignmentDirectional(-0.90, 0),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
                  child: Text(
                    "ข่าวสารล่าสุด",
                    style: Content_Black1,
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
              CardNews(
                image: "assets/image/news1.png",
                press: () {},
              ),
              CardNews(
                image: "assets/image/news2.png",
                press: () {},
              ),
              CardNews(
                image: "assets/image/news3.png",
                press: () {},
              ),
            ],
          ),
        ),
      );
}
