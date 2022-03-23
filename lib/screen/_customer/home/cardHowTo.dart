import 'package:flutter/material.dart';

class CardHowToSort extends StatelessWidget {
  const CardHowToSort({
    Key? key,
    required this.category,
    required this.image,
    required this.color,
    required this.press,
  }) : super(key: key);

  final String category;
  final String image;
  final Color color;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: 120,
          height: 120,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Stack(
              children: [
                Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        color.withOpacity(0.6),
                        color.withOpacity(0.6),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15.0,
                    vertical: 15.0,
                  ),
                  child: Center(
                    child: Text.rich(
                      TextSpan(
                        style: TextStyle(color: Colors.white),
                        children: [
                          TextSpan(
                            text: "$category",
                            style: const TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
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
      ),
    );
  }
}
