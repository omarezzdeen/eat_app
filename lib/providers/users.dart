

import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:eat_app/providers/toast_message.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../model/user.dart';
import 'auth.dart';

class Users with ChangeNotifier {

  getById(BuildContext context)async{
    String? id = (await Provider.of<Auth>(context, listen: false)) as String?;
  }

  FirebaseFirestore firestore = FirebaseFirestore.instance;

  addNewUser(UserAuth user) async{
    try{
      firestore.collection('users').doc(user.id).set(user.toMap());
    }catch(e){
      ToastMessage().toastMessage(e.toString());
      print(e.toString());
    }
  }
  getAllUser() {

    final Stream<QuerySnapshot> userStream = FirebaseFirestore.instance.collection('users').snapshots();
    return userStream;
    // QuerySnapshot<Map<String, dynamic>> data = await firestore.collection('users').get();
    // List<Map<String, dynamic>> dataDetails = data.docs.map((e) => e.data()).toList();
    //
    // List<UserAuth> userData = dataDetails.map((value) {
    //   return UserAuth(
    //     id: value['id'],
    //     email: value['email'],
    //     password: value['password'],
    //     name: value['name'],
    //     phone: value['phone'],
    //     passwordConfirm: value['passwordConfirm'],
    //   );
    // }).toList();
  }
  getOneUserFromId(String id) async {
    DocumentSnapshot<Map<String, dynamic>> doc = await firestore.collection('users').doc(id).get();
    Map<String, dynamic>? data = doc.data();

    log(data.toString());
  }

}