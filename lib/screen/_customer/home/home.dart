import 'package:flutte_final_project/constants.dart';
import 'package:flutte_final_project/screen/_customer/home/cardHowTo.dart';
import 'package:flutte_final_project/screen/_customer/home/cardNews.dart';
import 'package:flutte_final_project/screen/_customer/home/wallet.dart';
import 'package:flutte_final_project/screen/_customer/wallet/wallet_srceen.dart';
import 'package:flutter/material.dart';

class Customer_HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                GestureDetector(
                  child: Image.asset(
                    "assets/image/banner.png",
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.2,
                    fit: BoxFit.cover,
                  ),
                  onTap: () {},
                ),
                Align(
                  alignment: const AlignmentDirectional(0, 0),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 120),
                    child: GestureDetector(
                      child: Wallet,
                      onTap: () async {
                        //Navigator.of(context).pop();
                        Navigator.pushNamed(
                            context, CustomerWalletScreen.routeName);
                      },
                    ),
                  ),
                ),
              ],
            ),

            //TODO : Body Content, News
            Column(
              children: [
                //TODO : How To Sort
                Align(
                  alignment: const AlignmentDirectional(-0.90, 0),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
                    child: Text(
                      "วิธีการแยกขยะ",
                      style: Content_Black1,
                      textAlign: TextAlign.start,
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CardHowToSort(
                        category: "กระดาษ",
                        image: "assets/image/t1.jpg",
                        color: const Color(0xFF15924C),
                        press: () {},
                      ),
                      CardHowToSort(
                        category: "พลาสติก",
                        image: "assets/image/t2.png",
                        color: const Color(0xFF928515),
                        press: () {},
                      ),
                      CardHowToSort(
                        category: "แก้ว",
                        image: "assets/image/t3.jpg",
                        color: const Color(0xFF15924C),
                        press: () {},
                      ),
                      CardHowToSort(
                        category: "อุปกรณ์",
                        image: "assets/image/t4.jpg",
                        color: const Color(0xFF928515),
                        press: () {},
                      ),
                    ],
                  ),
                ),

                //TODO : Newspapers
                Align(
                  alignment: const AlignmentDirectional(-0.90, 0),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
                    child: Text(
                      "ข่าวสาร",
                      style: Content_Black1,
                      textAlign: TextAlign.start,
                    ),
                  ),
                ),
                Column(
                  children: [
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}

//======================================================================================================================
