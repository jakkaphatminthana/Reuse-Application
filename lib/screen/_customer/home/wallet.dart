//TODO : Wallet Widget
  import 'package:flutte_final_project/constants.dart';
import 'package:flutter/material.dart';

Material Wallet = Material(
    color: Colors.transparent,
    elevation: 2.0,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
    child: Container(
      width: 300,
      height: 70,
      decoration: BoxDecoration(
          color: const Color(0xFFEEEEEE),
          borderRadius: BorderRadius.circular(15.0),
          shape: BoxShape.rectangle,
          border: Border.all(color: Colors.black, width: 1.0)),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: Image.asset(
              "assets/image/coin.png",
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "My Wallet",
                textAlign: TextAlign.start,
                style: Content_Black1,
              ),
              Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  'แต้มสะสมของฉัน',
                  textAlign: TextAlign.start,
                  style: Content_Black2,
                ),
              ),
            ],
          ),
          Expanded(
            child: Align(
              alignment: AlignmentDirectional(0.2, 0),
              child: Text(
                "1000",
                style: Content_Black1,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.arrow_forward_ios,
              color: Colors.black,
              size: 24,
            ),
          )
        ],
      ),
    ),
  );