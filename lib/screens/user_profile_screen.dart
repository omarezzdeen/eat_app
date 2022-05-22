import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:eat_app/model/user.dart';
import 'package:eat_app/providers/auth.dart';
import 'package:eat_app/providers/toast_message.dart';
import 'package:eat_app/providers/users.dart';
import 'package:eat_app/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../utils/images.dart';
import '../widgets/widgets.dart';

class UserProfileScreen extends StatefulWidget {


  UserProfileScreen({Key? key}) : super(key: key);

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

var _isChecked = false;

class _UserProfileScreenState extends State<UserProfileScreen> {

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<Users>(context, listen: false);
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: size.height * 0.11,
              ),
              GestureDetector(
                onTap: () => Navigator.of(context)
                    .pushReplacementNamed(Routs.editProfileScreen),
                child: Stack(
                  children: [
                    SizedBox(
                      width: size.width * 0.21,
                      height: size.height * 0.09,
                      child: const Center(
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          backgroundImage:
                              AssetImage('assets/images/parson.png'),
                          radius: 100,
                        ),
                      ),
                    ),
                    Positioned(
                        top: 5,
                        // right: 10,
                        left: 32,
                        child: Container(
                          width: size.width * 0.12,
                          height: size.height * 0.02,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.0),
                            border: Border.all(
                                color: Theme.of(context).primaryColor,
                                width: 1.5),
                            color: Colors.white,
                          ),
                          child: Center(
                              child: Text(
                            'EDIT',
                            style: Theme.of(context)
                                .textTheme
                                .caption!
                                .copyWith(
                                    color: Theme.of(context).primaryColor),
                          )),
                        )),
                  ],
                ),
              ),
              StreamBuilder(
                stream: user.getAllUser(),
                builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (snapshot.hasError) {
                    return Text('Error: ${snapshot.error}');
                  }  else if(snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  final data = snapshot.requireData;
                  final userData = data.docs.firstWhere((element) => element.id == data.docs[0].id);
                  return Column(
                    children: [
                      Text(
                        userData['name'],
                        style: Theme.of(context).textTheme.subtitle1!.copyWith(
                              color: Colors.white,
                            ),
                      ),
                      Text(
                        "${userData['phone']}  -  ${userData['email']}",
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
                            style:
                                Theme.of(context).textTheme.subtitle1!.copyWith(
                                      color: Colors.white,
                                    ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                    ],
                  );
                },
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
                            Text('My Account',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5!
                                    .copyWith(fontSize: 22.0)),
                            const ItemProfile(
                                title: 'Manage Address',
                                image: 'assets/images/location-icon.png',
                                isChecked: true),
                            const ItemProfile(
                                title: 'Payment',
                                image: 'assets/images/card-icon.png',
                                isChecked: true),
                            const ItemProfile(
                                title: 'Orders',
                                image: 'assets/images/product.png',
                                isChecked: true),
                            const ItemProfile(
                                title: 'Favourite',
                                image: 'assets/images/Fav-icon.png',
                                isChecked: true),
                            const ItemProfile(
                                title: 'Offers',
                                image: 'assets/images/Offer-icon.png',
                                isChecked: true),
                            SizedBox(
                              height: size.height * 0.03,
                            ),
                            Text('Notifications',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5!
                                    .copyWith(fontSize: 22.0)),
                            const ItemProfile(
                                title: 'Push Notifications',
                                image: 'assets/images/Bell-Icon.png',
                                isChecked: false),
                            const ItemProfile(
                                title: 'Promotional Notifications',
                                image: 'assets/images/Bell-Icon.png',
                                isChecked: false),
                            SizedBox(
                              height: size.height * 0.02,
                            ),
                            Text('More',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5!
                                    .copyWith(fontSize: 22.0)),
                            const ItemProfile(
                                title: 'Help',
                                image: 'assets/images/help.png',
                                isChecked: true),
                            TextButton(
                              style: TextButton.styleFrom(
                                primary: Colors.white,
                                padding: const EdgeInsets.all(0.0),
                              ),
                              onPressed: () {
                                Provider.of<Auth>(context, listen: false)
                                    .logout(context);
                              },
                              child: const ItemProfile(
                                  title: 'Logout',
                                  image: 'assets/images/logout.png',
                                  isChecked: true),
                            ),
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
