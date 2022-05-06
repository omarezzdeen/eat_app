import 'package:eat_app/widgets/components/simple_app_bar.dart';
import 'package:eat_app/widgets/items/items_profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/images.dart';
import '../widgets/items/custom_text_from_field.dart';
import '../widgets/items/text_span.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({Key? key}) : super(key: key);

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

var _isChecked = false;

class _UserProfileScreenState extends State<UserProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
            isBack: false,
            color: Colors.white,
            paddingHorizontal: 0.06,
            paddingVertical: 0.03,
          ),
        ),
        SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.11,
              ),
              SizedBox(
                width: size.width * 0.2,
                height: size.height * 0.09,
                child: CircleAvatar(
                  radius: size.width * 0.2,
                  child: Image.asset(
                    'assets/images/parson.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text(
                "Ankit Bhatnagar",
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      color: Colors.white,
                    ),
              ),
              Text(
                "9990666464  -  creativeankitb@gmail.com",
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      color: Colors.white,
                    ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/noun_Location_1553710.png',
                    fit: BoxFit.cover,
                    color: Colors.white,
                    width: size.width * 0.03,
                    height: size.height * 0.02,
                  ),
                  SizedBox(
                    width: size.width * 0.02,
                  ),
                  Text(
                    "Gaur City, Noida",
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                          color: Colors.white,
                        ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Center(
                child: Container(
                  width: size.width * 0.814,
                  height: size.height * 0.69,
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
                            EdgeInsets.symmetric(horizontal: size.width * 0.05),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: size.height * 0.03,
                            ),
                            Text('My Account',style: Theme.of(context).textTheme.headline5!.copyWith(fontSize: 22.0)),
                            const ItemProfile(title: 'Manage Address', image: 'assets/images/location-icon.png', isChecked: true),
                            const ItemProfile(title: 'Payment', image: 'assets/images/card-icon.png', isChecked: true),
                            const ItemProfile(title: 'Orders', image: 'assets/images/product.png', isChecked: true),
                            const ItemProfile(title: 'Favourite', image: 'assets/images/Fav-icon.png', isChecked: true),
                            const ItemProfile(title: 'Offers', image: 'assets/images/Offer-icon.png', isChecked: true),
                            SizedBox(
                              height: size.height * 0.03,
                            ),
                            Text('Notifications',style: Theme.of(context).textTheme.headline5!.copyWith(fontSize: 22.0)),
                            const ItemProfile(title: 'Push Notifications', image: 'assets/images/Bell-Icon.png', isChecked: false),
                            const ItemProfile(title: 'Promotional Notifications', image: 'assets/images/Bell-Icon.png', isChecked: false),
                            SizedBox(
                              height: size.height * 0.02,
                            ),
                            Text('More',style: Theme.of(context).textTheme.headline5!.copyWith(fontSize: 22.0)),
                            const ItemProfile(title: 'Help', image: 'assets/images/help.png', isChecked: true),
                            const ItemProfile(title: 'Logout', image: 'assets/images/logout.png', isChecked: true),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
