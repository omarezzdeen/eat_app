import 'package:eat_app/utils/images.dart';
import 'package:eat_app/utils/routes.dart';
import 'package:eat_app/widgets/items/Items_text_form_field_signup.dart';
import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  var _isChecked = false;

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    String _userName = '';
    String _userEmail = '';
    String _userPhone = '';
    String _userPassword = '';
    String _userRetryPassword = '';

    void _trySubmit() {
      final isValid = _formKey.currentState!.validate();
      FocusScope.of(context).unfocus();
      if (isValid) {
        _formKey.currentState!.save();
      }
    }

    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            ImageResources.backgroundAndPrimaryImage,
            width: size.width,
            height: size.height,
            fit: BoxFit.cover,
          ),
          Positioned(
            top: size.height * 0.07,
            left: size.width * 0.084,
            child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Image.asset(
                ImageResources.backImage,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: size.height * 0.1,
                ),
                SizedBox(
                  width: size.width,
                  child: Text(
                    "Signup",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline3!.copyWith(
                          color: Colors.white,
                          fontSize: 45,
                        ),
                  ),
                ),
                Text(
                  "It's great to see you",
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        color: Colors.white,
                      ),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
            Container(
                    width: size.width * 0.814,
                    height: size.height * 0.68,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 1.0), //(x,y)
                          blurRadius: 6.0,
                        ),
                      ],
                    ),
                    child: Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: size.width * 0.062),
                          child: const ItemsTextFormFieldSignup(),
                        ),
                      ],
                    ),
                  ),
                SizedBox(
                  height: size.height * 0.04,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: Theme.of(context).textTheme.bodyText2!,
                    ),
                    TextButton(
                        onPressed: () => Navigator.of(context).pop(),
                        child: Text(
                          'Sign in',
                          style:
                              Theme.of(context).textTheme.bodyText2!.copyWith(
                                    color: Theme.of(context).primaryColor,
                                  ),
                        ))
                  ],
                ),
              ],
            ),
          ),

          Positioned(
              top: size.height * 0.84,
              left: size.width * -0.4,
              child: Image.asset(ImageResources.pizzaImage))
        ],
      ),
    );
  }
}
