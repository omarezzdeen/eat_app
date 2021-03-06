import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:eat_app/colors.dart';
import 'package:eat_app/providers/carts.dart';
import 'package:eat_app/providers/toast_message.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/cart.dart';
import '../widgets/widgets.dart';
import '../providers/foods.dart';
import '../utils/routes.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    // final food = Provider.of<Foods>(context);
    final foodId =
        ModalRoute.of(context)!.settings.arguments as dynamic; // is the id!
    // ToastMessage().toastMessage(foodId);
    // final loadedFood = Provider.of<Foods>(
    //   context,
    //   listen: false,
    // ).findById(foodId!);
    final Stream<QuerySnapshot> singleFood = FirebaseFirestore.instance
        .collection('foods')
        .where('id', isEqualTo: foodId)
        .snapshots();
    final cart = Provider.of<Carts>(context);
    return Scaffold(
      body: StreamBuilder<QuerySnapshot>(
          stream: singleFood,
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasError) {
              return const Center(
                child: Text('Something went wrong!'),
              );
            } else if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            final data = snapshot.requireData;
            return Column(
              children: [
                Stack(
                  children: [
                    SizedBox(
                      width: size.width,
                      height: size.height,
                    ),
                    Container(
                      width: size.width,
                      height: size.height * 0.39,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                              Colors.black.withOpacity(0.8), BlendMode.dstATop),
                          image: NetworkImage(
                            data.docs[0]['image'],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: size.height * 0.05,
                      left: size.width * 0.08,
                      right: size.width * 0.08,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            icon: const Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                            ),
                            onPressed: () => Navigator.of(context)
                                .pushNamed(Routs.bottomNavigationScreen),
                          ),
                          Icon(Icons.share, color: Colors.white),
                        ],
                      ),
                    ),
                    Positioned(
                      top: size.height * 0.28,
                      right: size.width * 0.06,
                      child: Container(
                        width: size.width * 0.072,
                        height: size.height * 0.033,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                FirebaseFirestore.instance
                                    .collection('foods')
                                    .doc(foodId)
                                    .update({'isFavorite': true});
                                data.docs[0]['isFavorite'] == true
                                    ? FirebaseFirestore.instance
                                        .collection('foods')
                                        .doc(foodId)
                                        .update({'isFavorite': false})
                                    : FirebaseFirestore.instance
                                        .collection('foods')
                                        .doc(foodId)
                                        .update({'isFavorite': true});
                              });
                            },
                            child: data.docs[0]['isFavorite'] == true
                                ? Icon(
                                    Icons.favorite,
                                    color: Theme.of(context).primaryColor,
                                    size: 18.0,
                                  )
                                : Icon(
                                    Icons.favorite_border,
                                    color: Theme.of(context).primaryColor,
                                    size: 18.0,
                                  ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: size.height * 0.33,
                      child: Container(
                        width: size.width,
                        height: size.height * 0.63,
                        decoration: BoxDecoration(
                          color: Theme.of(context).scaffoldBackgroundColor,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: size.width * 0.07),
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: size.height * 0.04,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        data.docs[0]['name'],
                                        maxLines: 2,
                                        style: const TextStyle(
                                            fontSize: 24.0,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    SizedBox(
                                      width: size.width * 0.08,
                                    ),
                                    Text(
                                      '\$${data.docs[0]['price']}',
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle1!
                                          .copyWith(
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              fontSize: 20.0),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: size.height * 0.02,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Icon(
                                      Icons.location_on_sharp,
                                      color: Colors.grey,
                                    ),
                                    Text(
                                      data.docs[0]['restaurant'],
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle1!
                                          .copyWith(
                                              color: Colors.grey,
                                              fontSize: 15.0),
                                    ),
                                    const Spacer(),
                                    Container(
                                      width: size.width * 0.09,
                                      height: size.height * 0.04,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(20),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Theme.of(context)
                                                .primaryColor
                                                .withOpacity(0.2),
                                            blurRadius: 6.0,
                                          ),
                                        ],
                                      ),
                                      child: Center(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 4.0, top: 4.0),
                                          child: Image.asset(
                                            'assets/images/cursor (1).png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  width: size.width * 0.24,
                                  height: size.height * 0.02,
                                  padding: const EdgeInsets.only(top: 1.5),
                                  decoration: BoxDecoration(
                                    color: Theme.of(context).primaryColor,
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Text(
                                    'Free Delivery',
                                    textAlign: TextAlign.center,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2!
                                        .copyWith(
                                            fontSize: 11.0,
                                            color: Colors.white),
                                  ),
                                ),
                                SizedBox(
                                  height: size.height * 0.03,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    ItemDetails(
                                      title: '4.7',
                                      subtitle: 'Rating',
                                      image: 'assets/images/star.png',
                                      color: HexColor('#FFB135'),
                                    ),
                                    ItemDetails(
                                      title: '200',
                                      subtitle: 'Favourite',
                                      image: 'assets/images/Path.png',
                                      color: HexColor('#BC2C3D'),
                                    ),
                                    ItemDetails(
                                      title: '24',
                                      subtitle: 'Phone',
                                      image:
                                          'assets/images/frame-landscape.png',
                                      color: HexColor('#2C2627'),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: size.height * 0.04,
                                ),
                                Text(
                                  'DETAILS',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(
                                          fontSize: 17.0,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400),
                                ),
                                Divider(
                                  color: Colors.black,
                                  height: 1.0,
                                  endIndent: size.width * 0.68,
                                  indent: 0.0,
                                ),
                                SizedBox(
                                  height: size.height * 0.02,
                                ),
                                Text(
                                  data.docs[0]['description'],
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(
                                          fontSize: 16.0,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  height: size.height * 0.03,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: size.height * 0.04,
                      right: size.width * 0.1,
                      left: size.width * 0.1,
                      child: CustomElevatedButton(
                        width: size.width * 0.79,
                        height: size.height * 0.06,
                        isIcon: false,
                        onPressed: () {
                          cart.addNewCart(Cart(
                            id: foodId,
                            name: data.docs[0]['name'],
                            image: data.docs[0]['image'],
                            price: data.docs[0]['price'],
                          ));
                          Navigator.of(context).pushNamed(Routs.cartScreen);
                          ToastMessage().toastMessage('Added to cart');
                        },
                        text: 'ADD TO CART',
                        borderRadius: 11.0,
                        color: Theme.of(context).primaryColor,
                        textColor: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            );
          }),
    );
  }
}
