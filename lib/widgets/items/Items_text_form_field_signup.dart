import 'package:eat_app/model/user.dart';
import 'package:eat_app/providers/master_provider.dart';
import 'package:eat_app/widgets/items/text_span.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';

import '../../providers/auth.dart';
import '../../utils/routes.dart';
import 'custom_elevated_button.dart';
import 'custom_text_from_field.dart';

class ItemsTextFormFieldSignup extends StatefulWidget {
  const ItemsTextFormFieldSignup({Key? key}) : super(key: key);

  @override
  State<ItemsTextFormFieldSignup> createState() =>
      _ItemsTextFormFieldSignupState();
}

class _ItemsTextFormFieldSignupState extends State<ItemsTextFormFieldSignup> {
  var _isChecked = true;

  // var _isLoading = true;
  String _userName = '';
  String _userEmail = '';
  String _userPhone = '';
  String _userPassword = '';
  String _userRetryPassword = '';
  final _formKey = GlobalKey<FormState>();

  //
  @override
  Widget build(BuildContext context) {
    final _nameController = TextEditingController();
    final _emailController = TextEditingController();
    final _phoneController = TextEditingController();
    final _passwordController = TextEditingController();
    final _retryPasswordController = TextEditingController();
    // final _isCheckedController = TextEditingController();

    UserAuth userAuth = UserAuth(
        name: _nameController.text,
        email: _emailController.text,
        phone: _phoneController.text,
        password: _passwordController.text,
        passwordConfirm: _retryPasswordController.text);
    final Size size = MediaQuery.of(context).size;
    return Form(
      key: _formKey,
      child: Column(
        children: [
          SizedBox(
            height: size.height * 0.03,
          ),
          CustomTextFromField(
            controller: _nameController,
            key: const Key('name'),
            textHint: 'Full Name',
            icon: Icons.person,
            isIcon: true,
            validator: (String? value) {
              if (value!.isEmpty) {
                return 'Please enter your name';
              }
            },
            onSaved: (value) => _userName = value!,
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          CustomTextFromField(
            controller: _emailController,
            key: const Key('email'),
            textHint: 'Email Address',
            icon: Icons.email,
            isIcon: true,
            textInputType: TextInputType.emailAddress,
            validator: (String? value) {
              if (value!.isEmpty || !value.contains('@')) {
                return 'Please enter your email';
              }
            },
            onSaved: (value) => _userEmail = value!,
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          CustomTextFromField(
            controller: _phoneController,
            key: const Key('phone'),
            textHint: 'Phone Number',
            icon: Icons.phone,
            isIcon: true,
            textInputType: TextInputType.phone,
            validator: (String? value) {
              if (value!.isEmpty || value.length < 10) {
                return 'Please enter your phone number';
              }
            },
            onSaved: (value) => _userPhone = value!,
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          CustomTextFromField(
            controller: _passwordController,
            key: const Key('password'),
            textHint: 'Password',
            icon: Icons.lock,
            isIcon: true,
            isPassword: true,
            textInputType: TextInputType.visiblePassword,
            validator: (String? value) {
              if (value!.isEmpty || value.length < 6) {
                return 'Please enter your password';
              }
            },
            onSaved: (value) => _userPassword = value!,
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          CustomTextFromField(
            controller: _retryPasswordController,
            key: const Key('retryPassword'),
            textHint: 'Retry Password',
            icon: Icons.lock,
            isIcon: true,
            isPassword: true,
            textInputType: TextInputType.visiblePassword,
            validator: (String? value) {
              if (value!.isEmpty || value.length < 6) {
                return 'Please enter your password';
              }
            },
            onSaved: (value) => _userRetryPassword = value!,
          ),
          SizedBox(
            height: size.height * 0.01,
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
                  textStyle: Theme.of(context).textTheme.caption!,
                  textStyle2: Theme.of(context).textTheme.caption!.copyWith(
                        color: Theme.of(context).primaryColor,
                        letterSpacing: -.5,
                      ),
                ),
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
              onPressed: () async {
                // _trySubmit();
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  Provider.of<MasterProvider>(context, listen: false).register(
                    UserAuth(
                      name: _nameController.text,
                      email: _emailController.text,
                      phone: _phoneController.text,
                      password: _passwordController.text,
                      passwordConfirm: _retryPasswordController.text,
                    ),
                    context,
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  void _trySubmit() {
    final isValid = _formKey.currentState!.validate();
    FocusScope.of(context).unfocus();
    if (isValid) {
      _formKey.currentState!.save();
      print(
          '$_userName $_userEmail $_userPhone $_userPassword $_userRetryPassword');
    }
  }
}
