import 'package:flutter/material.dart';

class CardNews extends StatelessWidget {
  const CardNews({
    Key? key,
    required this.image,
    required this.press,
  }) : super(key: key);

  final String image;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 1.0),
        ),
        child: GestureDetector(
          onTap: press,
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 100,
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
