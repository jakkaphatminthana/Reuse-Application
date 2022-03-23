import 'package:flutte_final_project/constants.dart';
import 'package:flutte_final_project/screen/login/login_page.dart';
import 'package:flutte_final_project/screen/register/register_form.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class RegsiterScreen extends StatelessWidget {
  //Location Page
  static String routeName = "/register";
  //Import Firebase
  final Future<FirebaseApp> firebase = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    //TODO : Check Connect Firebase?
    return FutureBuilder(
        future: firebase,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Scaffold(
              appBar: AppBar(
                title: Text("ERROR"),
              ),
              body: Center(
                child: Text("${snapshot.error}"),
              ),
            );
          }
          //Conncet Firebase OK
          if (snapshot.connectionState == ConnectionState.done) {
            return Scaffold(
              body: SingleChildScrollView(
                child: Stack(
                  children: [
                    //TODO : Background
                    Image.asset(
                      "assets/image/bg-green1.jpg",
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 1,
                      fit: BoxFit.cover,
                    ),

                    Align(
                      alignment: const AlignmentDirectional(0, 0),
                      child: Column(
                        children: [
                          //TODO : ICON Reuse
                          Padding(
                            padding: const EdgeInsets.only(top: 80),
                            child: Image.asset(
                              "assets/image/reuse.png",
                              width: 110,
                              height: 110,
                              fit: BoxFit.cover,
                            ),
                          ),
                          //TODO : HEAD RUSE Text
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              "REUSE",
                              textAlign: TextAlign.center,
                              style: heading_REUSE_head,
                            ),
                          ),

                          //TODO : Form Register
                          const RegisterForm(),

                          //TODO : TEXT Register
                          const SizedBox(height: 30.0),
                          Text(
                            "ฉันมีบัญชีเข้าใช้งานอยู่แล้ว",
                            style: heading_REUSE_subtitle2,
                          ),
                          GestureDetector(
                            onTap: () => Navigator.pushNamed(
                                context, LoginScreen.routeName),
                            child: Text(
                              "Login",
                              style: TextLink,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }
          //TODO : เอาไว้กัน Error builder
          return const Scaffold(body: CircularProgressIndicator());
        });
  }
}
