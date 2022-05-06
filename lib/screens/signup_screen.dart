import 'package:eat_app/utils/images.dart';
import 'package:eat_app/utils/routes.dart';
import 'package:eat_app/widgets/items/custom_elevated_button.dart';
import 'package:eat_app/widgets/items/custom_simple_elevated.dart';
import 'package:eat_app/widgets/items/custom_text_from_field.dart';
import 'package:eat_app/widgets/items/text_span.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  var _isChecked = false;

  @override
  Widget build(BuildContext context) {
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
          Column(
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
                height: size.height * 0.58,
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
                      padding:
                          EdgeInsets.symmetric(horizontal: size.width * 0.062),
                      child: Column(
                        children: [
                          SizedBox(
                            height: size.height * 0.03,
                          ),
                          CustomTextFromField(
                              textHint: 'Full Name', icon: Icons.person,isIcon: true,),
                          SizedBox(
                            height: size.height * 0.03,
                          ),
                          CustomTextFromField(
                              textHint: 'Email Address', icon: Icons.email,isIcon: true,),
                          SizedBox(
                            height: size.height * 0.03,
                          ),
                          CustomTextFromField(
                              textHint: 'Phone Number', icon: Icons.phone,isIcon: true,),
                          SizedBox(
                            height: size.height * 0.03,
                          ),
                          CustomTextFromField(
                              textHint: 'Password', icon: Icons.lock,isIcon: true,),
                          SizedBox(
                            height: size.height * 0.03,
                          ),
                          CustomTextFromField(
                              textHint: 'Retry Password', icon: Icons.lock,isIcon: true,),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          Row(
                            children: [
                              Checkbox(
                                activeColor: Theme.of(context).primaryColor,
                                value: _isChecked,
                                onChanged: (value) {
                                  setState(() {
                                    _isChecked = value!;
                                  });
                                },
                              ),
                              Expanded(
                                child: TextSpanApp(
                                  text: 'I agree to Eat24/7',
                                  textAlign: TextAlign.start,
                                  textStyle:
                                      Theme.of(context).textTheme.caption!,
                                  textStyle2: Theme.of(context)
                                      .textTheme
                                      .caption!
                                      .copyWith(
                                        color: Theme.of(context).primaryColor,
                                        letterSpacing: -.5,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
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
                        style: Theme.of(context).textTheme.bodyText2!.copyWith(
                              color: Theme.of(context).primaryColor,
                            ),
                      ))
                ],
              ),
            ],
          ),
          Positioned(
            width: size.width * 0.6,
            height: size.height * 0.06,
            top: size.height * 0.762,
            left: size.width * 0.2,
            child: CustomElevatedButton(
                text: 'SIGN UP',
                textColor: Colors.white,
                width: size.width * 0.6,
                height: size.height * 0.06,
                color: Theme.of(context).primaryColor,
            isIcon: false,
            onPressed: () => Navigator.of(context).pushNamed(Routs.bottomNavigationScreen)),
          ),
          Positioned(
              top: size.height * 0.84,
              left: size.width * -0.25,
              child: Image.asset(ImageResources.pizzaImage))
        ],
      ),
    );
  }
}
