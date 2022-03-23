import 'package:flutte_final_project/constants.dart';
import 'package:flutte_final_project/screen/login/login_form.dart';
import 'package:flutte_final_project/screen/register/register_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class LoginScreen extends StatefulWidget {
  //Location Page
  static String routeName = "/login";

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //Import Firebase
  final Future<FirebaseApp> firebase = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
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

                          //TODO : Form Login
                          const LoginForm(),

                          //TODO : TEXT Register
                          const SizedBox(height: 30.0),
                          Text(
                            "คุณยังไม่มีบัญชีเข้าใช้งาน?",
                            style: heading_REUSE_subtitle2,
                          ),
                          GestureDetector(
                            onTap: () => Navigator.pushNamed(
                                context, RegsiterScreen.routeName),
                            child: Text(
                              "Register",
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
