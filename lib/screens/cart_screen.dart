import 'package:eat_app/colors.dart';
import 'package:eat_app/utils/images.dart';
import 'package:eat_app/widgets/components/cart_list_view.dart';
import 'package:eat_app/widgets/components/simple_app_bar.dart';
import 'package:eat_app/widgets/items/item_cart.dart';
import 'package:flutter/material.dart';

import '../widgets/items/custom_elevated_button.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SimpleAppBar(
                name: 'My Cart',
                isBack: true,
                color: Colors.black,
                paddingHorizontal: 0.09,
                paddingVertical: 0.03,
              ),
              SizedBox(
                width: size.width,
                height: size.height * 0.43,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.08),
                  child: const CartListView(),
                ),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              const Divider(
                height: 1,
                thickness: 1,
                endIndent: 35,
                indent: 35,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.08,
                    vertical: size.height * 0.02),
                child: Row(
                  children: [
                    Image.asset(
                      ImageResources.couponImage,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      width: size.width * 0.02,
                    ),
                    Text(
                      'Apply Coupon',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: size.height * 0.03,
                      color: HexColor('#ABA5A5'),
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 1,
                thickness: 1,
                endIndent: 35,
                indent: 35,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.08,
                    vertical: size.height * 0.02),
                child: Column(
                  children: [
                    textPrice(
                        context, 'Item Total', '\$49.00', 16.0, Colors.black),
                    SizedBox(
                      height: size.height * 0.015,
                    ),
                    textPrice(
                        context, 'Discount', '\$10.00', 16.0, Colors.black),
                    SizedBox(
                      height: size.height * 0.015,
                    ),
                    textPrice(
                        context, 'Delivery Fee', 'FREE', 16.0, Colors.green),
                  ],
                ),
              ),
              const Divider(
                height: 1,
                thickness: 1,
                endIndent: 35,
                indent: 35,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.08,
                    vertical: size.height * 0.02),
                child: Row(
                  children: [
                    Text(
                      'Total',
                      style: Theme.of(context)
                          .textTheme
                          .headline4!
                          .copyWith(fontSize: 38.0, color: Colors.black),
                    ),
                    const Spacer(),
                    Text(
                      '\$39.00',
                      style: Theme.of(context)
                          .textTheme
                          .headline4!
                          .copyWith(fontSize: 38.0, color: Colors.black),
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 1,
                thickness: 1,
                endIndent: 35,
                indent: 35,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.08,
                    vertical: size.height * 0.02),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/noun_Location_1553710.png',
                      height: size.height * 0.03,
                      width: size.width * 0.06,
                    ),
                    Column(
                      children: [
                        Text(
                          'Deliver at : Home',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                        Text(
                          'Gaur City 1 Club',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: size.width * 0.02,
                    ),
                    Spacer(),
                    Text(
                      'CHANGE',
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1!
                          .copyWith(color: Theme.of(context).primaryColor),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(size.width * 0.08, size.height * 0.01, size.width * 0.08, size.height * 0.025),
                child: CustomElevatedButton(text: 'CONFIRM ORDER', width: size.width * 0.85, height: size.height * 0.08, color: Theme.of(context).primaryColor, isIcon: false, onPressed: (){}, textColor: Colors.white,borderRadius: 12.0,),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget textPrice(
      BuildContext context, String text, text2, double size, Color color) {
    return Row(
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.subtitle1!.copyWith(
                fontSize: size,
                color: color,
              ),
        ),
        Spacer(),
        Text(
          text2,
          style: Theme.of(context).textTheme.subtitle1!.copyWith(
                fontSize: size,
                color: color,
              ),
        ),
      ],
    );
  }
}
