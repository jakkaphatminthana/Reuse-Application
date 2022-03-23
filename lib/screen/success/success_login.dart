import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutte_final_project/constants.dart';
import 'package:flutte_final_project/model/user_model.dart';
import 'package:flutte_final_project/screen/_customer/home/home.dart';
import 'package:flutte_final_project/screen/_customer/tabbar.dart';
import 'package:flutte_final_project/screen/_manager/tabbar.dart';
import 'package:flutte_final_project/service/database.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;

class LoginSuccess extends StatefulWidget {
  //Location page
  static String routeName = "/LoginSuccess";

  @override
  State<LoginSuccess> createState() => _LoginSuccessState();
}

class _LoginSuccessState extends State<LoginSuccess> {
  //Database
  final scaffoldKey = GlobalKey<ScaffoldState>();

  Database db = Database.instance;

  var role;

  @override
  Widget build(BuildContext context) {
    Stream<List<UserModel>> status = db.getStateUser();
    CollectionReference status2 =
        FirebaseFirestore.instance.collection('users');
    final _auth = firebase_auth.FirebaseAuth.instance;
    firebase_auth.User? _user;
    _user = _auth.currentUser;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        elevation: 0.0,
        leading: const SizedBox(),
        flexibleSpace: Align(
          alignment: const AlignmentDirectional(0, 0.55),
          child: Text(
            "Login Success",
            style: AppberText_gray,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Align(
            alignment: const AlignmentDirectional(0, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                //TODO : Image Success
                Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Image.asset(
                    "assets/image/success.png",
                    fit: BoxFit.cover,
                  ),
                ),

                //TODO : Text Login Success
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Text(
                    "Login Success",
                    style: GoogleFonts.getFont(
                      'Russo One',
                      color: const Color(0xFFA4A3A3),
                      fontSize: 26,
                    ),
                  ),
                ),
                //--------------------------------------------------------------< Hight Light get Firebase
                StreamBuilder(
                  stream: status,
                  builder: (context, snapshot) {
                    return FutureBuilder<DocumentSnapshot>(
                      future: status2.doc('${_user?.uid}').get(),
                      builder: (context, snapshot5) {
                        if (snapshot5.hasError) {
                          return const Text("Something went wrong");
                        }
                        if (snapshot5.hasData) {
                          print("snapshot5.hasData = ${snapshot5.hasData}");
                          print(
                              "snapshot5.connectionState == ConnectionState.done");

                          if (snapshot5.connectionState ==
                              ConnectionState.done) {
                            Map<String, dynamic> data =
                                snapshot5.data!.data() as Map<String, dynamic>;
                            if (data['role'] != null) {
                              //TODO : Button Go home
                              return Column(
                                children: [
                                  const SizedBox(height: 50.0),
                                  ElevatedButton(
                                    child: Text("Back to Home",
                                        style: button_text),
                                    style: ElevatedButton.styleFrom(
                                      primary: const Color(0xFF00883C),
                                      fixedSize: const Size(160, 45),
                                      elevation: 2.0, //เงา
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20.0)),
                                    ),
                                    onPressed: () {
                                      if (data['role'] == "member") {
                                        Navigator.pushNamed(
                                            context, CustomerTabber.routeName);
                                      } else if (data['role'] == "manager") {
                                        Navigator.pushNamed(
                                            context, ManagerTabbar.routeName);
                                      } else {
                                        print("Something is wrong");
                                      }
                                    },
                                  ),
                                ],
                              );
                            }
                          }
                        }
                        return const Text('กำลังโหลด');
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Database db = Database.instance;
Stream<List<UserModel>> status = db.getStateUser();
CollectionReference status2 = FirebaseFirestore.instance.collection('users');
final _auth = firebase_auth.FirebaseAuth.instance;
firebase_auth.User? _user = _auth.currentUser;

StreamBuilder getRole = StreamBuilder(
  stream: status,
  builder: (context, snapshot) {
    return FutureBuilder<DocumentSnapshot>(
      future: status2.doc('${_user?.uid}').get(),
      builder: (context, snapshot5) {
        if (snapshot5.hasError) {
          return Text("Something went wrong");
        }
        if (snapshot5.hasData) {
          print("snapshot5.hasData = ${snapshot5.hasData}");
          print("snapshot5.connectionState == ConnectionState.done");

          if (snapshot5.connectionState == ConnectionState.done) {
            Map<String, dynamic> data =
                snapshot5.data!.data() as Map<String, dynamic>;
            if (data['role'] != null) {
              // = data['role'];
            }
          }
        }
        return Text('กำลังโหลด');
      },
    );
  },
);
