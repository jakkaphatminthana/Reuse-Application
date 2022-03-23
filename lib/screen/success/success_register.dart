import 'package:flutte_final_project/constants.dart';
import 'package:flutte_final_project/screen/login/login_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterSuccess extends StatelessWidget {
  const RegisterSuccess({ Key? key }) : super(key: key);

  static String routeName = "/RegisterSuccess";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        elevation: 0.0,
        leading: const SizedBox(),
        flexibleSpace: Align(
          alignment: const AlignmentDirectional(0, 0.55),
          child: Text(
            "Register Success",
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
                padding: EdgeInsets.only(top: 100),
                child: Image.asset(
                  "assets/image/success.png",
                  fit: BoxFit.cover,
                ),
              ),

              //TODO : Text Login Success
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Text(
                  "Register Success",
                  style: GoogleFonts.getFont(
                    'Russo One',
                    color: const Color(0xFFA4A3A3),
                    fontSize: 26,
                  ),
                ),
              ),

              const SizedBox(height: 50.0),
              ElevatedButton(
                  child: Text("Go to Login", style: button_text),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF00883C),
                    fixedSize: const Size(160, 45),
                    elevation: 2.0, //เงา
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, LoginScreen.routeName);
                  }),
            ],
          ),
        ),
      )),
    );
  }
}