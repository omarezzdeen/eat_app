import 'package:eat_app/providers/auth.dart';
import 'package:eat_app/providers/toast_message.dart';
import 'package:eat_app/providers/users.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../model/user.dart';

class MasterProvider with ChangeNotifier {


  register(UserAuth user, BuildContext context) async {
    try{
      String? id = await Provider.of<Auth>(context, listen: false).signUp(user, context);

      if (id != null) {
        user.id = id;
        Provider.of<Users>(context, listen: false).addNewUser(user);
      }
    } catch(e){
      ToastMessage().toastMessage(e.toString());
      print("This is a error register ---> ${e.toString()}");
    }
  }

  loginMaster(String email, String password, BuildContext context) async {
    try{
      String? id = await Provider.of<Auth>(context, listen: false)
          .login(email, password, context);
      if (id != null) {
        Provider.of<Users>(context, listen: false).getOneUserFromId(id);
      }
    } catch(e){
      ToastMessage().toastMessage(e.toString());
      print("This is a error login ---> ${e.toString()}");
    }
  }
}
