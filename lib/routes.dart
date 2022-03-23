import 'package:flutte_final_project/screen/_customer/home/home.dart';
import 'package:flutte_final_project/screen/_customer/profile.dart';
import 'package:flutte_final_project/screen/_customer/scan.dart';
import 'package:flutte_final_project/screen/_customer/tabbar.dart';
import 'package:flutte_final_project/screen/_customer/wallet/wallet_srceen.dart';
import 'package:flutte_final_project/screen/_manager/member/member.dart';
import 'package:flutte_final_project/screen/_manager/order/order.dart';
import 'package:flutte_final_project/screen/_manager/profile.dart';
import 'package:flutte_final_project/screen/_manager/request/request.dart';
import 'package:flutte_final_project/screen/_manager/tabbar.dart';
import 'package:flutte_final_project/screen/index/index.dart';
import 'package:flutte_final_project/screen/login/login_page.dart';
import 'package:flutte_final_project/screen/register/register_page.dart';
import 'package:flutte_final_project/screen/success/success_login.dart';
import 'package:flutte_final_project/screen/success/success_register.dart';
import 'package:flutter/cupertino.dart';

final Map<String, WidgetBuilder> routes = {
  IndexScreen.routeName:(context) => IndexScreen(),
  LoginScreen.routeName: (context) => LoginScreen(),
  RegsiterScreen.routeName: (context) => RegsiterScreen(),
  RegisterSuccess.routeName:(context) => RegisterSuccess(),
  LoginSuccess.routeName:(context) => LoginSuccess(),
  CustomerTabber.routeName:(context) => CustomerTabber(),
  CustomerScanSreen.routeName:(context) => CustomerScanSreen(),
  CustomerProfileScreen.routeName:(context) => CustomerProfileScreen(),
  CustomerWalletScreen.routeName:(context) => CustomerWalletScreen(),
  ManagerTabbar.routeName:(context) => ManagerTabbar(),
  ManagerProfileScreen.routeName:(context) => ManagerProfileScreen(),
  ManagerOrderScreen.routeName:(context) => ManagerOrderScreen(),
  ManagerRequestScreen.routeName:(context) => ManagerRequestScreen(),
  ManagerMemberScreen.routeName:(context) => ManagerMemberScreen(),
};
