import 'package:eat_app/utils/images.dart';
import 'package:eat_app/widgets/items/items_text_form_field_login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../utils/routes.dart';
import '../widgets/widgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    final _emailController = TextEditingController();
    final _passwordController = TextEditingController();
    User? user = FirebaseAuth.instance.currentUser;

    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(ImageResources.backgroundImage, fit: BoxFit.contain),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: size.height * 0.078,
                ),
                Center(
                  child: Image.asset(
                    ImageResources.logoImage,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.04,
                ),
                const Text(
                  "Welcome Back",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
                ),
                Text("Sign in to continue",
                    style: Theme.of(context).textTheme.bodyText1),
                SizedBox(
                  height: size.height * 0.05,
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: size.width * 0.0966),
                  child: const ItemsTextFormFieldLogin(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
