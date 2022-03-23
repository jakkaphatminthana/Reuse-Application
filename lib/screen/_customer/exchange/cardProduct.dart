import 'package:flutte_final_project/constants.dart';
import 'package:flutter/material.dart';

class CardProduct extends StatelessWidget {
  const CardProduct({
    Key? key,
    required this.name,
    required this.image,
    required this.point,
    required this.press,
  }) : super(key: key);

  final String name;
  final String image;
  final String point;
  final GestureTapCallback press;

  //TODO : สินค้า 1 ชิ้น
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: const EdgeInsets.only(right: 10.0),
        width: 110,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(width: 1.0),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(
                  image,
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 5.0),
            Align(
              alignment: const AlignmentDirectional(-0.98, 0),
              child: Text(
                name,
                style: Content_Black2,
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: const AlignmentDirectional(-1, 0),
                  child: Image.asset(
                    "assets/image/coin.png",
                    width: 20,
                    height: 20,
                    fit: BoxFit.cover,
                  ),
                ),
                Text(
                  point,
                  style: Content_Green2,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CardProductGird extends StatelessWidget {
  const CardProductGird({
    Key? key,
    required this.name,
    required this.image,
    required this.point,
    required this.press,
  }) : super(key: key);

  final String name;
  final String image;
  final String point;
  final GestureTapCallback press;

  //TODO : สินค้า 1 ชิ้น
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: 100,
        child: Column(
          children: [
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(width: 1.0),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset(
                    image,
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 5.0),
            Align(
              alignment: const AlignmentDirectional(-0.70, 0),
              child: Text(
                name,
                style: Content_Black2,
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(-0.78, 0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    "assets/image/coin.png",
                    width: 20,
                    height: 20,
                    fit: BoxFit.cover,
                  ),
                  Text(
                    point,
                    style: Content_Green2,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
