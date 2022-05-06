import 'package:eat_app/widgets/components/custom_text_from_field_search.dart';
import 'package:flutter/material.dart';

class CustomAppBarHomePage extends StatelessWidget {
  const CustomAppBarHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          height: size.height * 0.228,
          width: size.width,
          color: Theme.of(context).primaryColor,
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.place, color: Colors.white),
                        onPressed: () {},
                      ),
                      Text(
                        'Place: Gaur City',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                  IconButton(
                    icon: const Icon(Icons.notifications, color: Colors.white),
                    onPressed: () {},
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.031,
              ),
              SizedBox(
                width: size.width,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.06),
                  child: Text(
                    'Discover New Places',
                    textAlign: TextAlign.start,
                    style: Theme.of(context)
                        .textTheme
                        .headline4!
                        .copyWith(color: Colors.white, fontSize: 32),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: size.width,
          height: size.height * 0.28,
        ),
        Positioned(
          left: size.width * 0.06,
          right: size.width * 0.06,
          top: size.height * 0.2,
          child: Material(
              elevation: 10,
              borderRadius: BorderRadius.circular(20),
              shadowColor: Theme.of(context).primaryColor,
              child: CustomTextFromFieldSearch(
                  textHint: 'Find a food'),
            ),
        ),
      ],
    );
  }
}
