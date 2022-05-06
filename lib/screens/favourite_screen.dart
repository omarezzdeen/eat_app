import 'package:eat_app/widgets/components/favourite_grid.dart';
import 'package:flutter/material.dart';

import '../widgets/components/simple_app_bar.dart';

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