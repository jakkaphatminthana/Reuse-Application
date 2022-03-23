import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AuthService {
  //TODO : Import Firebase Auth
  final FirebaseAuth _auth = FirebaseAuth.instance;
  //TODO : เรียกข้อมูล User ณ ตอนนี้
  Stream<User?> get authStateChanges => _auth.idTokenChanges();

  //1. FUNCTION Register
  Future registerEmail(String email, String password, String name) async {
    //TODO : Check { Register with email }
    try {
      //TODO : Register User
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
        email: email,
        password: password,
      )
          .then((value) async {
        //TODO : อ้างอิง User ปัจจุบัน
        User? userEZ = FirebaseAuth.instance.currentUser;

        //TODO : สร้าง Database Profile
        await FirebaseFirestore.instance
            .collection("users")
            .doc(userEZ?.uid)
            .set({
          "id" : userEZ?.uid,
          "email": email,
          "name": name,
          "address": "",
          "role": 'member',
          "point": 0,
          "images": "https://firebasestorage.googleapis.com/v0/b/moblie-final.appspot.com/o/images%2Fuser.png?alt=media&token=f6550382-266a-44ff-9ab8-a495da83bd0f",
        });
      });
      //TODO : Check Error
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        Fluttertoast.showToast(
          msg: "The password provided is too weak.",
          gravity: ToastGravity.CENTER,
        );
      } else if (e.code == 'email-already-in-use') {
        Fluttertoast.showToast(
          msg: "The account already exists for that email.",
          gravity: ToastGravity.CENTER,
        );
      }
      return false;
    }
  }

  //2. FUNCTION Login
  Future LoginEmail(String email, String password) async {
    //TODO : Check { Login with email }
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      //TODO : Check Error
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        Fluttertoast.showToast(
          msg: "No user found for that email.",
          gravity: ToastGravity.CENTER,
        );
      } else if (e.code == 'wrong-password') {
        Fluttertoast.showToast(
          msg: "Wrong password provided.",
          gravity: ToastGravity.CENTER,
        );
      }
      return false;
    }
  }
}

