import 'package:eat_app/widgets/components/custom_text_from_field_search.dart';
import 'package:eat_app/widgets/components/simple_app_bar.dart';
import 'package:eat_app/widgets/items/custom_text_from_field_edit_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../utils/images.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
           top: size.height * 0.01,
           left: size.width * 0.04,
           right: size.width * 0.04,
           child: const SimpleAppBar(
             name: "Profile",
             isBack: true,
             color: Colors.white,
             paddingHorizontal: 0.06,
             paddingVertical: 0.03,
           ),
         ),
         Positioned(
           top: size.height * 0.115,
           child: Container(
             width: size.width,
              height: size.height * 0.91,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: size.width * 0.08, right: size.width * 0.06, top: size.height * 0.02),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: size.width * 0.13,
                          height: size.height * 0.06,
                          child: const Center(
                            child: CircleAvatar(
                              backgroundColor: Colors.transparent,
                              backgroundImage: AssetImage('assets/images/parson.png'),
                              radius: 100,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: size.width * 0.03,
                        ),
                        Text('Change Avatar', style: Theme.of(context).textTheme.subtitle1!.copyWith(color: Theme.of(context).primaryColor,fontSize: 13),),
                        const Spacer(),
                        Text('SAVE', style: Theme.of(context).textTheme.subtitle1!.copyWith(color: Theme.of(context).primaryColor,fontSize: 13),),
                      ],
                    ),
                    Column(
                      children: const [
                        CustomTextFromFieldEditProfile(text: 'Full Name',),
                        CustomTextFromFieldEditProfile(text: 'Email Address'),
                        CustomTextFromFieldEditProfile(text: 'Phone Number'),
                        CustomTextFromFieldEditProfile(text: 'Password'),
                      ],
                    ),

                  ],
                ),
              ),

           ),
         ),
       ],
     ),
    );
  }
}
