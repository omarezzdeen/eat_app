import 'package:eat_app/colors.dart';
import 'package:eat_app/widgets/items/custom_elevated_button.dart';
import 'package:flutter/material.dart';

import '../utils/routes.dart';
import '../widgets/items/items_details_rating.dart';

class DetailsScreen extends StatelessWidget {
  // final String title;
  // final String description;
  // final String image;
  //
  const DetailsScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
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
                    image: const AssetImage(
                      'assets/images/test.png',
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
                        Icons.arrow_back_ios, color: Colors.white,
                      ),
                      onPressed: () => Navigator.of(context).pushNamed(Routs.bottomNavigationScreen),
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
                    child: Icon(Icons.favorite,
                        color: Theme.of(context).primaryColor, size: 18.0),
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
                    padding:
                        EdgeInsets.symmetric(horizontal: size.width * 0.07),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: size.height * 0.04,
                          ),
                          Row(
                            children: [
                              const Expanded(
                                child: Text(
                                  'Paradise Hyderabad Biryani',
                                  maxLines: 2,
                                  style: TextStyle(
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              SizedBox(
                                width: size.width * 0.08,
                              ),
                              Text(
                                '\$13.00',
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1!
                                    .copyWith(
                                        color: Theme.of(context).primaryColor,
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
                                'Chawala Chicken, Crossing republic',
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1!
                                    .copyWith(
                                        color: Colors.grey, fontSize: 15.0),
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
                                      fontSize: 11.0, color: Colors.white),
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.03,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                image: 'assets/images/frame-landscape.png',
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
                            endIndent: size.width * 0.77,
                            indent: 0.0,
                          ),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          Text(
                            'The name biryani itself brings water in your mouth. It’s a one-pot meat that can fill your stomach itself and it doesn’t need any side dish, however, many enjoy biryani with mirchi ka salan and raita. over the years there have been several variations of this one dish. Here’s one dish that defines the word biryani and based on which, the variations have taken place. Chicken Biryani is one of the most popular dishes that you can find across the world and it’s loaded with various spices. ',
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
                  onPressed: () {},
                  text: 'ADD TO CART',
                  borderRadius: 11.0,
                  color: Theme.of(context).primaryColor,
                  textColor: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
