import 'package:flutte_final_project/constants.dart';
import 'package:flutte_final_project/screen/_customer/exchange/cardProduct.dart';
import 'package:flutte_final_project/screen/_customer/home/wallet.dart';
import 'package:flutte_final_project/screen/_customer/wallet/wallet_srceen.dart';
import 'package:flutter/material.dart';

class Customer_ExchangeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const SizedBox(height: 10.0),
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(
                            context, CustomerWalletScreen.routeName);
                      },
                      child: Wallet,
                    ),
                  ),
                  //TODO : สินค้าแนะนำ
                  Align(
                    alignment: const AlignmentDirectional(-0.95, 0),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0, top: 15.0),
                      child: Text("สินค้าแนะนำ", style: Content_Black1),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-0.9, 0),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            CardProduct(
                              name: "แก้วเยติ แก้วน้ำ",
                              image: "assets/image/p2.png",
                              point: "1000",
                              press: () {},
                            ),
                            CardProduct(
                              name: "ถุงผ้ารักษ์โลก",
                              image: "assets/image/p1.png",
                              point: "850",
                              press: () {},
                            ),
                            CardProduct(
                              name: "แผ่นรองเมาส์สีดำ",
                              image: "assets/image/p3.jpg",
                              point: "980",
                              press: () {},
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          //TODO : รายการสินค้า
          Expanded(
            child: Column(
              children: [
                Align(
                  alignment: const AlignmentDirectional(-0.95, 0),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0, top: 10.0),
                    child: Text("รายการสินค้า", style: Content_Black1),
                  ),
                ),
                const SizedBox(height: 5.0),
                const Divider(
                  height: 2,
                  thickness: 2,
                  indent: 20,
                  endIndent: 30,
                  color: Colors.black,
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: GridView(
                      padding: EdgeInsets.zero,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        childAspectRatio: 0.85,
                      ),
                      scrollDirection: Axis.vertical,
                      children: [
                        CardProductGird(
                          name: "เสื้อยืดรักษ์โลก",
                          image: "assets/image/p4.jpg",
                          point: "1600",
                          press: () {},
                        ),
                        CardProductGird(
                          name: "แก้วเยติ แก้วน้ำ",
                          image: "assets/image/p2.png",
                          point: "1000",
                          press: () {},
                        ),
                        CardProductGird(
                          name: "ถุงผ้ารักษ์โลก",
                          image: "assets/image/p1.png",
                          point: "850",
                          press: () {},
                        ),
                        CardProductGird(
                          name: "แก้วเยติ แก้วน้ำ",
                          image: "assets/image/p2.png",
                          point: "1000",
                          press: () {},
                        ),
                        CardProductGird(
                          name: "แผ่นรองเมาส์สีดำ",
                          image: "assets/image/p3.jpg",
                          point: "980",
                          press: () {},
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
