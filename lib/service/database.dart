import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:flutte_final_project/model/user_model.dart';

class DatabaseService {
  late final String uid;

  // collection reference
  final CollectionReference _collectionReference =
      FirebaseFirestore.instance.collection('users');

  // get database
  Stream<QuerySnapshot> get collectionEZ {
    return _collectionReference.snapshots();
  }
}

//=======================================================================================
//ติดต่อกับ firebase
class Database {
  static Database instance = Database._();
  Database._();
  Future getFirebaseStore() async {
    firebase_storage.Reference ref = await firebase_storage
        .FirebaseStorage.instance
        .ref('folderName/imageName.png');
    return ref;
  }

  Stream<DocumentSnapshot> getProfile() {
    final _auth = firebase_auth.FirebaseAuth.instance;
    firebase_auth.User? _user;
    _user = _auth.currentUser;
    final reference =
        FirebaseFirestore.instance.collection('users').doc('${_user?.uid}');
    //เรียงเอกสารจากมากไปน้อย โดยใช้ ฟิลด์ id
    final snapshots = reference.snapshots();
    // Stream<DocumentSnapshot<Map<String, dynamic>>> snapshots
    return snapshots.map((snapshot) {
      return snapshot;
    });
  }

  Stream<List<UserModel>> getStateUser() {
    final reference = FirebaseFirestore.instance.collection('users');
    //เรียงเอกสารจากมากไปน้อย โดยใช้ ฟิลด์ id
    final snapshots = reference.snapshots();
    //QuerySnapshot<Map<String, dynamic>> snapshot
    //QuerySnapshot<Object?> snapshot
    return snapshots.map((snapshot) {
      return snapshot.docs.map((doc) {
        return UserModel.fromMap(doc.data());
      }).toList();
    });
  }
}
