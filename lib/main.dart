import 'package:flutte_final_project/routes.dart';
import 'package:flutte_final_project/screen/_customer/tabbar.dart';
import 'package:flutte_final_project/screen/_manager/tabbar.dart';
import 'package:flutte_final_project/screen/index/index.dart';
import 'package:flutte_final_project/screen/success/success_login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jakkaphat',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: IndexScreen(),
      initialRoute: IndexScreen.routeName,
      routes: routes,
      
    );
  }
}

