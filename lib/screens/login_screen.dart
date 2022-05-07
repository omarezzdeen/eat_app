import 'package:eat_app/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../utils/routes.dart';
import '../widgets/widgets.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Image.asset(ImageResources.backgroundImage, fit: BoxFit.contain),
            Column(
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
                  child: Column(
                    children: [
                      CustomTextFromField(textHint: "Email Id", isIcon: false,),
                      SizedBox(
                        height: size.height * 0.05,
                      ),
                      CustomTextFromField(textHint: "Password", isIcon: false,),
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
                        onPressed: () => Navigator.of(context).pushNamed(Routs.bottomNavigationScreen),

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
                        onPressed: () {},
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
                        onPressed: () {},
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
                              onPressed: () => Navigator.of(context)
                                  .pushNamed(Routs.signupScreen),
                              child: Text(
                                "Sign Up",
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor),
                              )),
                        ],
                      ),
                      TextSpanApp(
                        text: 'By logging in you agree to Eat24/7',
                        textAlign: TextAlign.center,
                        textStyle: Theme.of(context).textTheme.bodyText1!,
                        textStyle2:
                            Theme.of(context).textTheme.bodyText1!.copyWith(
                                  color: Theme.of(context).primaryColor,
                                ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
