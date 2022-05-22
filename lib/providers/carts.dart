import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:eat_app/model/cart.dart';
import 'package:eat_app/providers/toast_message.dart';
import 'package:flutter/material.dart';

class Carts with ChangeNotifier{

  FirebaseFirestore firestore = FirebaseFirestore.instance;
  addNewCart(Cart cart) async{
    try{
      await firestore.collection('carts').doc(cart.id).set(cart.toMap());
    }catch(e){
      ToastMessage().toastMessage(e.toString());
      print(e.toString());
    }
  }
  getAllCart(){
    final Stream<QuerySnapshot> cartFood = FirebaseFirestore.instance.collection('carts').snapshots();
    return cartFood;
  }
  

}