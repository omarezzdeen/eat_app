import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: const [
            SimpleAppBar(
              name: 'Your Favourite',
              isBack: true,
              color: Colors.black,
              paddingHorizontal: 0.09,
              paddingVertical: 0.03,
            ),
            Expanded(child: FavouriteGrid()),
          ],
        ),
      ),
    );
  }
}