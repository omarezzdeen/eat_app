import 'package:flutter/material.dart';

import '../../screens/screens.dart';
import '../../utils/images.dart';

class BottomNavigationBarMuster extends StatefulWidget {
  const BottomNavigationBarMuster({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarMuster> createState() => _BottomNavigationBarMusterState();
}

class _BottomNavigationBarMusterState extends State<BottomNavigationBarMuster> {
  final List _widgetOptions = [
    const HomeScreen(),
    const FavouriteScreen(),
    const CartScreen(),
    const UserProfileScreen(),
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Theme.of(context).primaryColor,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(ImageResources.bottomHomeImage,fit: BoxFit.cover,),
            label: 'Home',
            // activeIcon: Image.asset(ImageResources.bottomHomeImage),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(ImageResources.bottomHeartImage,fit: BoxFit.cover,),
            label: 'Favourite',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(ImageResources.bottomCartImage,fit: BoxFit.cover,),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(ImageResources.bottomUsersImage,fit: BoxFit.cover,),
            label: 'Profile',
          ),

        ],
      ),
    );
  }
}
