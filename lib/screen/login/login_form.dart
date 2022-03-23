import 'package:flutte_final_project/constants.dart';
import 'package:flutte_final_project/screen/success/success_login.dart';
import 'package:flutte_final_project/service/auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../components/default_textfield.dart';
import '../../model/user_model.dart';
import '../../model/validator.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final AuthService _auth = AuthService();
  Profile profileEZ = Profile();

//-------------------------------------------------------------------------------------------------------------------------
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(25, 50, 25, 0),
            child: buildEmailFormField(profileEZ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(25, 15, 25, 0),
            child: buildPasswordFormField(profileEZ),
          ),

          //TODO : Button LOGIN
          const SizedBox(height: 50.0),
          ElevatedButton(
            child: Text("LOGIN", style: button_text),
            style: ElevatedButton.styleFrom(
              primary: Colors.black,
              fixedSize: const Size(350, 45),
              side: const BorderSide(width: 2.0, color: Colors.white), //ขอบ
              elevation: 2.0, //เงา
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            //TODO : เมื่อกดปุ่มให้ทำการส่งข้อมูล TextField
            onPressed: () async {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState?.save();

                //TODO : Login With Email
                await _auth.LoginEmail(
                  profileEZ.email,
                  profileEZ.password,
                ).then((value) {
                  //TODO : Check error firebase
                  if (value != false) {
                    _formKey.currentState?.reset();
                    //TODO : Go to next page
                    Navigator.pushNamed(context, LoginSuccess.routeName);
                  }
                });
              }
            },
          ),
        ],
      ),
    );
  }
}

//=====================================================================================================
//TODO : Email Form
TextFormField buildEmailFormField(profileEZ) {
  return TextFormField(
    keyboardType: TextInputType.emailAddress,
    obscureText: false,
    decoration: styleTextField("Enter Email", Icons.mail_outline_sharp),
    validator: ValidatorEmail,
    onSaved: (emailEZ) {
      profileEZ.email = emailEZ!;
    },
  );
}

//TODO : Password Form
TextFormField buildPasswordFormField(profileEZ) {
  return TextFormField(
    keyboardType: TextInputType.visiblePassword,
    obscureText: true,
    decoration: styleTextField("Enter Password", Icons.lock),
    validator: ValidatorPassword,
    onSaved: (passwordEZ) {
      profileEZ.password = passwordEZ!;
    },
  );
}
