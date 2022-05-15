import 'package:eat_app/providers/auth.dart';
import 'package:eat_app/widgets/items/toast_message.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';

import '../../colors.dart';
import '../../utils/images.dart';
import '../../utils/routes.dart';
import '../widgets.dart';

class ItemsTextFormFieldLogin extends StatefulWidget {
  const ItemsTextFormFieldLogin({Key? key}) : super(key: key);

  @override
  State<ItemsTextFormFieldLogin> createState() =>
      _ItemsTextFormFieldLoginState();
}

class _ItemsTextFormFieldLoginState extends State<ItemsTextFormFieldLogin> {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    String _userEmail = '';
    String _userPassword = '';
    void _trySubmit() {
      final isValid = _formKey.currentState!.validate();
      FocusScope.of(context).unfocus();
      if (isValid) {
        _formKey.currentState!.save();
      }
    }

    final _emailController = TextEditingController();
    final _passwordController = TextEditingController();
    final auth = Provider.of<Auth>(context, listen: false);
    final size = MediaQuery.of(context).size;
    return Form(
      key: _formKey,
      child: Column(
        children: [
          CustomTextFromField(
            controller: _emailController,
            validator: (String? value) {
              if (value!.isEmpty || !value.contains('@')) {
                return 'Please enter your email';
              }
            },
            onSaved: (String? value) => _userEmail = value!,
            textHint: "Email Id",
            isIcon: false,
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          CustomTextFromField(
              controller: _passwordController,
              validator: (String? value) {
                if (value!.isEmpty || value.length < 6) {
                  return 'Please enter your password';
                }
              },
              onSaved: (String? value) => _userPassword = value!,
              textHint: "Password",
              isIcon: false,
              isPassword: true),
          SizedBox(
            height: size.height * 0.016,
          ),
          SizedBox(
            width: size.width,
            child: Text(
              "Forgot Password?",
              textAlign: TextAlign.start,
              style: Theme.of(context)
                  .textTheme
                  .bodyText2!
                  .copyWith(color: Theme.of(context).primaryColor),
            ),
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          CustomElevatedButton(
            text: "SIGN IN",
            textColor: Colors.white,
            width: size.width * 0.8,
            height: size.height * 0.06,
            color: Theme.of(context).primaryColor,
            isIcon: false,
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                auth.login(_emailController.text, _passwordController.text,context);
              }
            }
          ),
          SizedBox(
            height: size.height * 0.027,
          ),
          CustomElevatedButton(
            text: "SIGN IN WITH FACEBOOK",
            textColor: Colors.white,
            image: ImageResources.facebookLogoImage,
            width: size.width * 0.8,
            height: size.height * 0.06,
            color: HexColor("#494FB6"),
            onPressed: () async{
              // auth.signInWithFacebook();
            },
            isIcon: true,
          ),
          SizedBox(
            height: size.height * 0.027,
          ),
          CustomElevatedButton(
            text: "SIGN IN WITH GOOGLE",
            textColor: Theme.of(context).primaryColor,
            image: ImageResources.googleLogoImage,
            width: size.width * 0.8,
            height: size.height * 0.06,
            color: Colors.white,
            onPressed: () async {
              // auth.signInWithGoogle();
            },
            isIcon: true,
          ),
          SizedBox(
            height: size.height * 0.042,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Don’t have an account?'),
              TextButton(
                  onPressed: () =>
                      Navigator.of(context).pushNamed(Routs.signupScreen),
                  child: Text(
                    "Sign Up",
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  )),
            ],
          ),
          TextSpanApp(
            text: 'By logging in you agree to Eat24/7',
            textAlign: TextAlign.center,
            textStyle: Theme.of(context).textTheme.bodyText1!,
            textStyle2: Theme.of(context).textTheme.bodyText1!.copyWith(
                  color: Theme.of(context).primaryColor,
                ),
          ),
        ],
      ),
    );
  }
}
